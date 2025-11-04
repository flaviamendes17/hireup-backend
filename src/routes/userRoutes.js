import { Router } from 'express';
import { listUsers, getUser, updateUser, deleteUser } from '../controllers/UserController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const r = Router();
r.use(authMiddleware);
r.get('/', listUsers);
r.get('/:id', getUser);
r.put('/:id', updateUser);
r.delete('/:id', deleteUser);
export default r;
