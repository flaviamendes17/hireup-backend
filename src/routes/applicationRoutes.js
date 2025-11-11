import { Router } from 'express';
import {
  listApplications,
  createApplication,
  getApplication,
  updateApplication,
  deleteApplication,
  moveApplicationStage
} from '../controllers/ApplicationController.js';

const router = Router();

// GET /api/applications - Listar todas as candidaturas
router.get('/', listApplications);

// POST /api/applications - Criar nova candidatura
router.post('/', createApplication);

// GET /api/applications/:id - Buscar candidatura por ID
router.get('/:id', getApplication);

// PUT /api/applications/:id - Atualizar candidatura
router.put('/:id', updateApplication);

// DELETE /api/applications/:id - Deletar candidatura
router.delete('/:id', deleteApplication);

// POST /api/applications/:id/move - Mover candidatura para outro estágio
router.post('/:id/move', moveApplicationStage);

export default router;
