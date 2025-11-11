import { Router } from 'express';
import { listJobs, createJob, getJob, updateJob, deleteJob } from '../controllers/JobController.js';

const router = Router();

// GET /api/jobs - Listar todas as vagas
router.get('/', listJobs);

// POST /api/jobs - Criar nova vaga
router.post('/', createJob);

// GET /api/jobs/:id - Buscar vaga por ID
router.get('/:id', getJob);

// PUT /api/jobs/:id - Atualizar vaga
router.put('/:id', updateJob);

// DELETE /api/jobs/:id - Deletar vaga
router.delete('/:id', deleteJob);

export default router;
