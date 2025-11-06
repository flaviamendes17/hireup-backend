import { Router } from 'express';
import { listNotes, createNote, updateNote, deleteNote } from '../controllers/NoteController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// Todas as rotas de notas requerem autenticação
router.use(authMiddleware);

// GET /api/notes - Listar todas as notas
router.get('/', listNotes);

// POST /api/notes - Criar nova nota
router.post('/', createNote);

// PUT /api/notes/:id - Atualizar nota
router.put('/:id', updateNote);

// DELETE /api/notes/:id - Deletar nota
router.delete('/:id', deleteNote);

export default router;
