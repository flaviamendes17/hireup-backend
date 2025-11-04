import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export const listApplications = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM applications ORDER BY applied_at DESC');
    return res.json(rows);
  } catch (err) {
    console.error('listApplications', err);
    return res.status(500).json({ error: 'Failed to fetch applications' });
  }
};

export const createApplication = async (req, res) => {
  try {
    const { job_id, candidate_id, resume_url = null, cover_letter = null } = req.body;

    // define stage default global (first default stage)
    const { rows: stageRows } = await pool.query('SELECT id FROM stages WHERE job_id IS NULL AND is_default = true ORDER BY position ASC LIMIT 1');
    const stage_id = stageRows.length ? stageRows[0].id : null;

    const id = uuidv4();
    const q = `INSERT INTO applications (id, job_id, candidate_id, stage_id, resume_url, cover_letter, applied_at)
               VALUES ($1,$2,$3,$4,$5,$6,NOW()) RETURNING *`;
    const { rows } = await pool.query(q, [id, job_id, candidate_id, stage_id, resume_url, cover_letter]);
    return res.status(201).json(rows[0]);
  } catch (err) {
    if (err.code === '23505') {
      // unique_violation
      return res.status(400).json({ error: 'You already applied to this job' });
    }
    console.error('createApplication', err);
    return res.status(500).json({ error: 'Failed to create application' });
  }
};

export const getApplication = async (req, res) => {
  try {
    const { id } = req.params;
    const { rows } = await pool.query('SELECT * FROM applications WHERE id = $1', [id]);
    if (!rows.length) return res.status(404).json({ error: 'Application not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('getApplication', err);
    return res.status(500).json({ error: 'Failed to fetch application' });
  }
};

export const updateApplication = async (req, res) => {
  try {
    const { id } = req.params;
    const { stage_id, status, resume_url, cover_letter } = req.body;
    const q = `UPDATE applications SET stage_id = COALESCE($1, stage_id),
                                       status = COALESCE($2, status),
                                       resume_url = COALESCE($3, resume_url),
                                       cover_letter = COALESCE($4, cover_letter),
                                       updated_at = NOW()
               WHERE id = $5 RETURNING *`;
    const { rows } = await pool.query(q, [stage_id, status, resume_url, cover_letter, id]);
    if (!rows.length) return res.status(404).json({ error: 'Application not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('updateApplication', err);
    return res.status(500).json({ error: 'Failed to update application' });
  }
};

export const deleteApplication = async (req, res) => {
  try {
    const { id } = req.params;
    await pool.query('DELETE FROM applications WHERE id = $1', [id]);
    return res.status(204).send();
  } catch (err) {
    console.error('deleteApplication', err);
    return res.status(500).json({ error: 'Failed to delete application' });
  }
};

export const moveApplicationStage = async (req, res) => {
  try {
    const { id } = req.params;
    const { stage_id } = req.body;
    const { rows } = await pool.query('UPDATE applications SET stage_id = $1, updated_at = NOW() WHERE id = $2 RETURNING *', [stage_id, id]);
    if (!rows.length) return res.status(404).json({ error: 'Application not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('moveApplicationStage', err);
    return res.status(500).json({ error: 'Failed to move stage' });
  }
};
