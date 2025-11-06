-- Script para criar todas as tabelas necessárias
-- Execute este arquivo no pgAdmin ou psql

-- 1. Criar tabela de usuários
CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    password_hash VARCHAR(200) NOT NULL,
    role VARCHAR(50) DEFAULT 'candidate',
    phone VARCHAR(20),
    bio TEXT,
    avatar_url VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Criar tabela de empresas
CREATE TABLE IF NOT EXISTS companies (
    id UUID PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    website VARCHAR(500),
    description TEXT,
    owner_id UUID REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Criar tabela de vagas
CREATE TABLE IF NOT EXISTS jobs (
    id UUID PRIMARY KEY,
    company_id UUID REFERENCES companies(id),
    title VARCHAR(200) NOT NULL,
    description TEXT,
    requirements TEXT,
    benefits TEXT,
    location VARCHAR(200),
    employment_type VARCHAR(50),
    salary_min DECIMAL(10,2),
    salary_max DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Criar tabela de estágios
CREATE TABLE IF NOT EXISTS stages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position INTEGER NOT NULL,
    is_default BOOLEAN DEFAULT false,
    job_id UUID REFERENCES jobs(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Criar tabela de candidaturas
CREATE TABLE IF NOT EXISTS applications (
    id UUID PRIMARY KEY,
    job_id UUID REFERENCES jobs(id),
    candidate_id UUID REFERENCES users(id),
    stage_id INTEGER REFERENCES stages(id),
    resume_url VARCHAR(500),
    cover_letter TEXT,
    status VARCHAR(50) DEFAULT 'applied',
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 6. Criar tabela de notas
CREATE TABLE IF NOT EXISTS notes (
    id UUID PRIMARY KEY,
    application_id UUID REFERENCES applications(id),
    author_id UUID REFERENCES users(id),
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 7. Criar tabela de anexos
CREATE TABLE IF NOT EXISTS attachments (
    id UUID PRIMARY KEY,
    application_id UUID REFERENCES applications(id),
    file_name VARCHAR(500) NOT NULL,
    file_url VARCHAR(500) NOT NULL,
    file_type VARCHAR(100),
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Mensagem de sucesso
SELECT 'Todas as tabelas foram criadas com sucesso!' as status;
