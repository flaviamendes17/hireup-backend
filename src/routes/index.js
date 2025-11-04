import { Router } from 'express';
import authRoutes from './authRoutes.js';
import userRoutes from './userRoutes.js';
import companyRoutes from './companyRoutes.js';
import jobRoutes from './jobRoutes.js';
import stageRoutes from './stageRoutes.js';
import applicationRoutes from './applicationRoutes.js';
import noteRoutes from './noteRoutes.js';
import attachmentRoutes from './attachmentRoutes.js';

const router = Router();

// Rota de teste pública
router.get('/test', (req, res) => {
  res.json({ 
    message: 'API HireUp funcionando!', 
    timestamp: new Date(),
    routes: [
    'POST /api/auth/register - Registrar usuário',
    'POST /api/auth/login - Login',
    'GET /api/users - Listar usuários (requer token)',
    'GET /api/companies - Listar empresas (requer token)',
    'GET /api/jobs - Listar vagas (requer token)'
    ]
  });
});

router.use('/auth', authRoutes);
router.use('/users', userRoutes);
router.use('/companies', companyRoutes);
router.use('/jobs', jobRoutes);
router.use('/stages', stageRoutes);
router.use('/applications', applicationRoutes);
router.use('/notes', noteRoutes);
router.use('/attachments', attachmentRoutes);

export default router;