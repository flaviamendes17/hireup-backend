import { Router } from 'express';
import { register, login } from '../controllers/AuthController.js';

const router = Router();

// POST /api/auth/register - Registrar novo usuário (público)
router.post('/register', register);

// POST /api/auth/login - Login de usuário (público)
router.post('/login', login);

export default router;
