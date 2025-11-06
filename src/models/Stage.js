import pool from '../config/database.js';

export default class Stage {
  static async create({ name, position, is_default, job_id }) {
    const result = await pool.query(
      `INSERT INTO stages (name, position, is_default, job_id, created_at, updated_at)
       VALUES ($1,$2,$3,$4, NOW(), NOW()) RETURNING *`,
      [name, position, is_default, job_id]
    );
    return result.rows[0];
  }

  static async findAll() {
    const result = await pool.query('SELECT * FROM stages ORDER BY position');
    return result.rows;
  }
}
