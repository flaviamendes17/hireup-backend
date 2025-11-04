import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export const listAttachments = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM attachments ORDER BY uploaded_at DESC');
    return res.json(rows);
  } catch (err) {
    console.error('listAttachments', err);
    return res.status(500).json({ error: 'Failed to fetch attachments' });
  }
};

export const createAttachment = async (req, res) => {
  try {
    // Para upload real use multer/S3; aqui assumimos dados no body
    const { application_id, filename, url, mimetype = null, size_bytes = null } = req.body;
    const id = uuidv4();
    const q = `INSERT INTO attachments (id, application_id, filename, url, mimetype, size_bytes, uploaded_at)
               VALUES ($1,$2,$3,$4,$5,$6,NOW()) RETURNING *`;
    const { rows } = await pool.query(q, [id, application_id, filename, url, mimetype, size_bytes]);
    return res.status(201).json(rows[0]);
  } catch (err) {
    console.error('createAttachment', err);
    return res.status(500).json({ error: 'Failed to create attachment' });
  }
};

export const deleteAttachment = async (req, res) => {
  try {
    const { id } = req.params;
    await pool.query('DELETE FROM attachments WHERE id = $1', [id]);
    return res.status(204).send();
  } catch (err) {
    console.error('deleteAttachment', err);
    return res.status(500).json({ error: 'Failed to delete attachment' });
  }
};
export const getAttachment = async (req, res) => {
  try {
    const { id } = req.params;
    const { rows } = await pool.query('SELECT * FROM attachments WHERE id = $1', [id]);
    if (!rows.length) return res.status(404).json({ error: 'Attachment not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('getAttachment', err);
    return res.status(500).json({ error: 'Failed to fetch attachment' });
  }
};