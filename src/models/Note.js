import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export default class Note {
  static async create({ application_id, author_id, content }) {
    const id = uuidv4();
    const result = await pool.query(
      `INSERT INTO notes (id, application_id, author_id, content, created_at, updated_at)
       VALUES ($1,$2,$3,$4, NOW(), NOW()) RETURNING *`,
      [id, application_id, author_id, content]
    );
    return result.rows[0];
  }

  static async findByApplication(application_id) {
    const result = await pool.query('SELECT * FROM notes WHERE application_id = $1', [application_id]);
    return result.rows;
  }
}
