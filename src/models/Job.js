import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export default class Job {
  static async create({ company_id, title, description, requirements, benefits, location, employment_type, salary_min, salary_max }) {
    const id = uuidv4();
    const result = await pool.query(
      `INSERT INTO jobs (id, company_id, title, description, requirements, benefits, location, employment_type, salary_min, salary_max, status, created_at, updated_at)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,'open', NOW(), NOW()) RETURNING *`,
      [id, company_id, title, description, requirements, benefits, location, employment_type, salary_min, salary_max]
    );
    return result.rows[0];
  }

  static async findAll() {
    const result = await pool.query('SELECT * FROM jobs WHERE status = $1', ['open']);
    return result.rows;
  }
}
