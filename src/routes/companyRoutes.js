import { Router } from 'express';
import { listCompanies, createCompany, getCompany, updateCompany, deleteCompany } from '../controllers/CompanyController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const router = Router();

// Todas as rotas de empresas requerem autenticação
router.use(authMiddleware);

// GET /api/companies - Listar todas as empresas
router.get('/', listCompanies);

// POST /api/companies - Criar nova empresa
router.post('/', createCompany);

// GET /api/companies/:id - Buscar empresa por ID
router.get('/:id', getCompany);

// PUT /api/companies/:id - Atualizar empresa
router.put('/:id', updateCompany);

// DELETE /api/companies/:id - Deletar empresa
router.delete('/:id', deleteCompany);

export default router;
