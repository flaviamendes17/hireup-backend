import { Router } from 'express';
import { listStages, createStage, updateStage, deleteStage } from '../controllers/StageController.js';

const router = Router();

// GET /api/stages - Listar todos os estágios
router.get('/', listStages);

// POST /api/stages - Criar novo estágio
router.post('/', createStage);

// PUT /api/stages/:id - Atualizar estágio
router.put('/:id', updateStage);

// DELETE /api/stages/:id - Deletar estágio
router.delete('/:id', deleteStage);

export default router;
