import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';
import generateSlug from '../utils/generateSlug.js';

export const listJobs = async (req, res) => {
  try {
    const { department, location } = req.query; // optional filters
    let q = `SELECT j.*, c.name as company_name FROM jobs j LEFT JOIN companies c ON j.company_id = c.id`;
    const conditions = [];
    const values = [];

    if (department) {
      // assuming department is stored in company or job (if not, ignore)
      // placeholder to show filter usage; adapt conforme seu modelo
    }
    if (location) {
      conditions.push(`j.location ILIKE $${values.length + 1}`);
      values.push(`%${location}%`);
    }
    if (conditions.length) q += ' WHERE ' + conditions.join(' AND ');

    q += ' ORDER BY j.created_at DESC';

    const { rows } = await pool.query(q, values);
    return res.json(rows);
  } catch (err) {
    console.error('listJobs', err);
    return res.status(500).json({ error: 'Failed to fetch jobs' });
  }
};

export const createJob = async (req, res) => {
  try {
    const {
      company_id,
      title,
      slug,
      description = null,
      requirements = null,
      benefits = null,
      location = null,
      employment_type = null,
      salary_min = null,
      salary_max = null,
      status = 'open',
      published_at = null,
    } = req.body;

    const id = uuidv4();
    const finalSlug = slug || generateSlug(title) || `${id.slice(0, 8)}`;
    const q = `INSERT INTO jobs (id, company_id, title, slug, description, requirements, benefits, location, employment_type, salary_min, salary_max, status, published_at)
               VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13) RETURNING *`;
    const values = [id, company_id, title, finalSlug, description, requirements, benefits, location, employment_type, salary_min, salary_max, status, published_at];
    const { rows } = await pool.query(q, values);
    return res.status(201).json(rows[0]);
  } catch (err) {
    console.error('createJob', err);
    return res.status(500).json({ error: 'Failed to create job' });
  }
};

export const getJob = async (req, res) => {
  try {
    const { id } = req.params;
    const { rows } = await pool.query('SELECT * FROM jobs WHERE id = $1', [id]);
    if (!rows.length) return res.status(404).json({ error: 'Job not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('getJob', err);
    return res.status(500).json({ error: 'Failed to fetch job' });
  }
};

export const updateJob = async (req, res) => {
  try {
    const { id } = req.params;
    const fields = [
      'company_id', 'title', 'slug', 'description', 'requirements', 'benefits',
      'location', 'employment_type', 'salary_min', 'salary_max', 'status', 'published_at'
    ];

    const sets = [];
    const values = [];
    let idx = 1;
    for (const f of fields) {
      if (f in req.body) {
        sets.push(`${f} = $${idx}`);
        values.push(req.body[f]);
        idx++;
      }
    }
    if (!sets.length) return res.status(400).json({ error: 'No fields to update' });

    const q = `UPDATE jobs SET ${sets.join(', ')}, updated_at = NOW() WHERE id = $${idx} RETURNING *`;
    values.push(id);
    const { rows } = await pool.query(q, values);
    if (!rows.length) return res.status(404).json({ error: 'Job not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('updateJob', err);
    return res.status(500).json({ error: 'Failed to update job' });
  }
};

export const deleteJob = async (req, res) => {
  try {
    const { id } = req.params;
    await pool.query('DELETE FROM jobs WHERE id = $1', [id]);
    return res.status(204).send();
  } catch (err) {
    console.error('deleteJob', err);
    return res.status(500).json({ error: 'Failed to delete job' });
  }
};
