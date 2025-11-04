import pool from '../config/database.js';
import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
import { v4 as uuidv4 } from 'uuid';

dotenv.config();

const JWT_EXPIRES = '7d';

export const register = async (req, res) => {
  try {
    const { name, email, password, role = 'candidate', phone = null, bio = null } = req.body;
    if (!email || !password) return res.status(400).json({ error: 'Email and password required' });

    const { rows: existing } = await pool.query('SELECT id FROM users WHERE email = $1', [email]);
    if (existing.length) return res.status(400).json({ error: 'Email already registered' });

    const id = uuidv4();
    const password_hash = await bcrypt.hash(password, 10);

    const q = `INSERT INTO users (id, name, email, password_hash, role, phone, bio)
               VALUES ($1,$2,$3,$4,$5,$6,$7) RETURNING id, name, email, role, phone, bio, created_at`;
    const values = [id, name, email, password_hash, role, phone, bio];

    const { rows } = await pool.query(q, values);
    const user = rows[0];

    const token = jwt.sign({ id: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: JWT_EXPIRES });

    return res.status(201).json({ user, token });
  } catch (err) {
    console.error('register error', err);
    return res.status(500).json({ error: 'Registration failed' });
  }
};

export const login = async (req, res) => {
  try {
    const { email, password } = req.body;
    if (!email || !password) return res.status(400).json({ error: 'Email and password required' });

    const { rows } = await pool.query('SELECT * FROM users WHERE email = $1', [email]);
    const user = rows[0];
    if (!user) return res.status(401).json({ error: 'Invalid credentials' });

    const matched = await bcrypt.compare(password, user.password_hash);
    if (!matched) return res.status(401).json({ error: 'Invalid credentials' });

    const token = jwt.sign({ id: user.id, role: user.role }, process.env.JWT_SECRET, { expiresIn: JWT_EXPIRES });

    // remove password_hash before sending
    delete user.password_hash;
    return res.json({ user, token });
  } catch (err) {
    console.error('login error', err);
    return res.status(500).json({ error: 'Login failed' });
  }
};
