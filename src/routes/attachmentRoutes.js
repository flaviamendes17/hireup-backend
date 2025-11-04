import { Router } from 'express';
import { listAttachments, createAttachment, deleteAttachment } from '../controllers/AttachmentController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const r = Router();
r.use(authMiddleware);
r.get('/', listAttachments);
r.post('/', createAttachment);
r.delete('/:id', deleteAttachment);
export default r;
