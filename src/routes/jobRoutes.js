import { Router } from 'express';
import { listJobs, createJob, getJob, updateJob, deleteJob } from '../controllers/JobController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const r = Router();
r.get('/', listJobs); // público para listagem
r.use(authMiddleware);
r.post('/', createJob);
r.get('/:id', getJob);
r.put('/:id', updateJob);
r.delete('/:id', deleteJob);

export default r;
