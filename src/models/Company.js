import pool from '../config/database.js';
import { v4 as uuidv4 } from 'uuid';

export default class Company {
  static async create({ name, website, description, owner_id }) {
    const id = uuidv4();
    const result = await pool.query(
      `INSERT INTO companies (id, name, website, description, owner_id, created_at, updated_at)
       VALUES ($1,$2,$3,$4,$5, NOW(), NOW()) RETURNING *`,
      [id, name, website, description, owner_id]
    );
    return result.rows[0];
  }

  static async findAll() {
    const result = await pool.query('SELECT * FROM companies');
    return result.rows;
  }
}
