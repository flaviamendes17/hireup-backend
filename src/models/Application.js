import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export default class Application {
  static async create({ job_id, candidate_id, stage_id, resume_url, cover_letter }) {
    const id = uuidv4();
    const result = await pool.query(
      `INSERT INTO applications (id, job_id, candidate_id, stage_id, resume_url, cover_letter, status, applied_at, updated_at)
       VALUES ($1,$2,$3,$4,$5,$6,'applied', NOW(), NOW()) RETURNING *`,
      [id, job_id, candidate_id, stage_id, resume_url, cover_letter]
    );
    return result.rows[0];
  }
}
