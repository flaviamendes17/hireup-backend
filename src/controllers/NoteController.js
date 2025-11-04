import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export const listNotes = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM notes ORDER BY created_at DESC');
    return res.json(rows);
  } catch (err) {
    console.error('listNotes', err);
    return res.status(500).json({ error: 'Failed to fetch notes' });
  }
};

export const createNote = async (req, res) => {
  try {
    const { application_id, author_id, content } = req.body;
    const id = uuidv4();
    const q = `INSERT INTO notes (id, application_id, author_id, content) VALUES ($1,$2,$3,$4) RETURNING *`;
    const { rows } = await pool.query(q, [id, application_id, author_id, content]);
    return res.status(201).json(rows[0]);
  } catch (err) {
    console.error('createNote', err);
    return res.status(500).json({ error: 'Failed to create note' });
  }
};

export const updateNote = async (req, res) => {
  try {
    const { id } = req.params;
    const { content } = req.body;
    const { rows } = await pool.query('UPDATE notes SET content = $1, updated_at = NOW() WHERE id = $2 RETURNING *', [content, id]);
    if (!rows.length) return res.status(404).json({ error: 'Note not found' });
    return res.json(rows[0]);
  } catch (err) {
    console.error('updateNote', err);
    return res.status(500).json({ error: 'Failed to update note' });
  }
};

export const deleteNote = async (req, res) => {
  try {
    const { id } = req.params;
    await pool.query('DELETE FROM notes WHERE id = $1', [id]);
    return res.status(204).send();
  } catch (err) {
    console.error('deleteNote', err);
    return res.status(500).json({ error: 'Failed to delete note' });
  }
};
