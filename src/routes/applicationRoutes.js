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

const r = Router();
r.get('/', authMiddleware, listApplications);
r.post('/', createApplication); // aplicação pública
r.get('/:id', authMiddleware, getApplication);
r.put('/:id', authMiddleware, updateApplication);
r.delete('/:id', authMiddleware, deleteApplication);
r.post('/:id/move', authMiddleware, moveApplicationStage);
export default r;
