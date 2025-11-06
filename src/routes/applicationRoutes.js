import { Router } from 'express';
import {
  listApplications,
  createApplication,
  getApplication,
  updateApplication,
  deleteApplication,
  moveApplicationStage
} from '../controllers/ApplicationController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// GET /api/applications - Listar todas as candidaturas (requer auth)
router.get('/', authMiddleware, listApplications);

// POST /api/applications - Criar nova candidatura (público)
router.post('/', createApplication);

// GET /api/applications/:id - Buscar candidatura por ID (requer auth)
router.get('/:id', authMiddleware, getApplication);

// PUT /api/applications/:id - Atualizar candidatura (requer auth)
router.put('/:id', authMiddleware, updateApplication);

// DELETE /api/applications/:id - Deletar candidatura (requer auth)
router.delete('/:id', authMiddleware, deleteApplication);

// POST /api/applications/:id/move - Mover candidatura para outro estágio (requer auth)
router.post('/:id/move', authMiddleware, moveApplicationStage);

export default router;
