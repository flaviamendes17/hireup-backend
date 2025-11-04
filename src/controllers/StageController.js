import pool from '../config/database.js';

export const listStages = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM stages ORDER BY position ASC');
    return res.json(rows);
  } catch (err) {
    console.error('listStages', err);
    return res.status(500).json({ error: 'Failed to fetch stages' });
  }
};

export const createStage = async (req, res) => {
  try {
    const { name, position, is_default = false, job_id = null } = req.body;
    const q = `INSERT INTO stages (name, position, is_default, job_id) VALUES ($1,$2,$3,$4) RETURNING *`;
    const { rows } = await pool.query(q, [name, position, is_default, job_id]);
    return res.status(201).json(rows[0]);
  } catch (err) {
    console.error('createStage', err);
    return res.status(500).json({ error: 'Failed to create stage' });
  }
};

export const updateStage = async (req, res) => {
  try {
    const { id } = req.params;
    const { name, position, is_default, job_id } = req.body;
    const q = `UPDATE stages SET name = COALESCE($1, name),
                                  position = COALESCE($2, position),
                                  is_default = COALESCE($3, is_default),
                                  job_id = COALESCE($4, job_id)
               WHERE id = $5 RETURNING *`;
    const { rows } = await pool.query(q, [name, position, is_default, job_id, id]);
    if (!rows.length) return res.status(404).json({ error: 'Stage not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('updateStage', err);
    return res.status(500).json({ error: 'Failed to update stage' });
  }
};

export const deleteStage = async (req, res) => {
  try {
    const { id } = req.params;
    await pool.query('DELETE FROM stages WHERE id = $1', [id]);
    return res.status(204).send();
  } catch (err) {
    console.error('deleteStage', err);
    return res.status(500).json({ error: 'Failed to delete stage' });
  }
};
