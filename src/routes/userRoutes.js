import { Router } from 'express';
import { listUsers, getUser, updateUser, deleteUser } from '../controllers/UserController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// Todas as rotas de usuários requerem autenticação
router.use(authMiddleware);

// GET /api/users - Listar todos os usuários
router.get('/', listUsers);

// GET /api/users/:id - Buscar usuário por ID
router.get('/:id', getUser);

// PUT /api/users/:id - Atualizar usuário
router.put('/:id', updateUser);

// DELETE /api/users/:id - Deletar usuário
router.delete('/:id', deleteUser);

export default router;
