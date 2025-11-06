import { Router } from 'express';
import { listStages, createStage, updateStage, deleteStage } from '../controllers/StageController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// GET /api/stages - Listar todos os estágios (público)
router.get('/', listStages);

// Rotas abaixo requerem autenticação
router.use(authMiddleware);

// POST /api/stages - Criar novo estágio (requer auth)
router.post('/', createStage);

// PUT /api/stages/:id - Atualizar estágio (requer auth)
router.put('/:id', updateStage);

// DELETE /api/stages/:id - Deletar estágio (requer auth)
router.delete('/:id', deleteStage);

export default router;
