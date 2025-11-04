import { Router } from 'express';
import { listNotes, createNote, updateNote, deleteNote } from '../controllers/NoteController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const r = Router();
r.use(authMiddleware);
r.get('/', listNotes);
r.post('/', createNote);
r.put('/:id', updateNote);
r.delete('/:id', deleteNote);
export default r;
