import { Router } from 'express';
import { listAttachments, createAttachment, deleteAttachment } from '../controllers/AttachmentController.js';

const router = Router();

// GET /api/attachments - Listar todos os anexos
router.get('/', listAttachments);

// POST /api/attachments - Criar novo anexo
router.post('/', createAttachment);

// DELETE /api/attachments/:id - Deletar anexo
router.delete('/:id', deleteAttachment);

export default router;
