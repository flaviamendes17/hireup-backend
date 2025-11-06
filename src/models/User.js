import pool from '../config/database.js';
import bcrypt from 'bcryptjs';
import { v4 as uuidv4 } from 'uuid';

export default class User {
  static async create({ name, email, password, role, phone, avatar_url, bio }) {
    const id = uuidv4();
    const password_hash = await bcrypt.hash(password, 10);
    const query = `
      INSERT INTO users (id, name, email, password_hash, role, phone, avatar_url, bio, created_at, updated_at)
      VALUES ($1,$2,$3,$4,$5,$6,$7,$8, NOW(), NOW())
      RETURNING id, name, email, role;
    `;
    const values = [id, name, email, password_hash, role, phone, avatar_url, bio];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  static async findByEmail(email) {
    const result = await pool.query('SELECT * FROM users WHERE email = $1', [email]);
    return result.rows[0];
  }

  static async findAll() {
    const result = await pool.query('SELECT id, name, email, role, phone FROM users');
    return result.rows;
  }

  static async delete(id) {
    await pool.query('DELETE FROM users WHERE id = $1', [id]);
  }
}
