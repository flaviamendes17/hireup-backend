import { Router } from 'express';
import { listStages, createStage, updateStage, deleteStage } from '../controllers/StageController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const r = Router();
r.get('/', listStages);
r.use(authMiddleware);
r.post('/', createStage);
r.put('/:id', updateStage);
r.delete('/:id', deleteStage);
export default r;
