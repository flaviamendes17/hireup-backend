import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export const listCompanies = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM companies ORDER BY created_at DESC');
    return res.json(rows);
  } catch (err) {
    console.error('listCompanies', err);
    return res.status(500).json({ error: 'Failed to fetch companies' });
  }
};

export const createCompany = async (req, res) => {
  try {
    const { name, website = null, description = null, owner_id = null } = req.body;
    const id = uuidv4();
    const q = `INSERT INTO companies (id, name, website, description, owner_id) VALUES ($1,$2,$3,$4,$5) RETURNING *`;
    const { rows } = await pool.query(q, [id, name, website, description, owner_id]);
    return res.status(201).json(rows[0]);
  } catch (err) {
    console.error('createCompany', err);
    return res.status(500).json({ error: 'Failed to create company' });
  }
};

export const getCompany = async (req, res) => {
  try {
    const { id } = req.params;
    const { rows } = await pool.query('SELECT * FROM companies WHERE id = $1', [id]);
    if (!rows.length) return res.status(404).json({ error: 'Company not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('getCompany', err);
    return res.status(500).json({ error: 'Failed to fetch company' });
  }
};

export const updateCompany = async (req, res) => {
  try {
    const { id } = req.params;
    const { name, website, description, owner_id } = req.body;
    const q = `UPDATE companies SET name = COALESCE($1, name),
                                   website = COALESCE($2, website),
                                   description = COALESCE($3, description),
                                   owner_id = COALESCE($4, owner_id),
                                   updated_at = NOW()
               WHERE id = $5 RETURNING *`;
    const { rows } = await pool.query(q, [name, website, description, owner_id, id]);
    if (!rows.length) return res.status(404).json({ error: 'Company not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('updateCompany', err);
    return res.status(500).json({ error: 'Failed to update company' });
  }
};

export const deleteCompany = async (req, res) => {
  try {
    const { id } = req.params;
    await pool.query('DELETE FROM companies WHERE id = $1', [id]);
    return res.status(204).send();
  } catch (err) {
    console.error('deleteCompany', err);
    return res.status(500).json({ error: 'Failed to delete company' });
  }
};
