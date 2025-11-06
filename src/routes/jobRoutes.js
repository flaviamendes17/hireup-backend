import { Router } from 'express';
import { listJobs, createJob, getJob, updateJob, deleteJob } from '../controllers/JobController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// GET /api/jobs - Listar todas as vagas (público)
router.get('/', listJobs);

// Rotas abaixo requerem autenticação
router.use(authMiddleware);

// POST /api/jobs - Criar nova vaga (requer auth)
router.post('/', createJob);

// GET /api/jobs/:id - Buscar vaga por ID (requer auth)
router.get('/:id', getJob);

// PUT /api/jobs/:id - Atualizar vaga (requer auth)
router.put('/:id', updateJob);

// DELETE /api/jobs/:id - Deletar vaga (requer auth)
router.delete('/:id', deleteJob);

export default router;
