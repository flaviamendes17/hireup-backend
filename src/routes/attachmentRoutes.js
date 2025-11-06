import { Router } from 'express';
import { listAttachments, createAttachment, deleteAttachment } from '../controllers/AttachmentController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// Todas as rotas de anexos requerem autenticação
router.use(authMiddleware);

// GET /api/attachments - Listar todos os anexos
router.get('/', listAttachments);

// POST /api/attachments - Criar novo anexo (upload de arquivo)
router.post('/', createAttachment);

// DELETE /api/attachments/:id - Deletar anexo
router.delete('/:id', deleteAttachment);

export default router;
