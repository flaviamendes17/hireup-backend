CREATE DATABASE hireup;
\c hireup;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    senha VARCHAR(200) NOT NULL
    -- a gente vai arriscar um négocio diferente??
    --   avatar_url text,
);

CREATE TABLE vagas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    departamento VARCHAR(100),
    localizacao VARCHAR(100),
    descricao TEXT,
    requisitos TEXT,
    beneficios TEXT,
    status VARCHAR(50) DEFAULT 'aberta', 
    criado_por INTEGER REFERENCES users(id),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE candidatos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    telefone VARCHAR(50),
    curriculo_url TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE candidaturas (
    id SERIAL PRIMARY KEY,
    job_id INTEGER REFERENCES vagas(id),
    candidate_id INTEGER REFERENCES candidatos(id),
    etapa VARCHAR(50) DEFAULT 'triagem', 
    data_candidatura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (job_id, candidate_id) -- evita duplicação de candidatura
);

