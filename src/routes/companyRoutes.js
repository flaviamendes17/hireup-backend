import { Router } from 'express';
import { listCompanies, createCompany, getCompany, updateCompany, deleteCompany } from '../controllers/CompanyController.js';
import authMiddleware from '../middleware/authMiddleware.js';

const r = Router();
r.use(authMiddleware);
r.get('/', listCompanies);
r.post('/', createCompany);
r.get('/:id', getCompany);
r.put('/:id', updateCompany);
r.delete('/:id', deleteCompany);
export default r;
