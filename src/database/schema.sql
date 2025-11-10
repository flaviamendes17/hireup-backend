CREATE DATABASE hireup;
\c hireup;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
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

-- os 100 usuarios 
INSERT INTO users (name, email, password_hash) VALUES ('Ana Clara Souza', 'ana.souza1@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Bruno Martins', 'bruno.martins2@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Carla Ferreira', 'carla.ferreira3@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Diego Andrade', 'diego.andrade4@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Eduarda Lima', 'eduarda.lima5@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Felipe Carvalho', 'felipe.carvalho6@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Gabriela Torres', 'gabriela.torres7@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Henrique Duarte', 'henrique.duarte8@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Isabelle Araújo', 'isabelle.araujo9@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('João Pedro Alves', 'joao.alves10@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Karen Gomes', 'karen.gomes11@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Lucas Barros', 'lucas.barros12@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Mariana Monteiro', 'mariana.monteiro13@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Nathan Costa', 'nathan.costa14@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Olivia Batista', 'olivia.batista15@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Paulo Viana', 'paulo.viana16@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Queila Barbosa', 'queila.barbosa17@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Rafael Pinto', 'rafael.pinto18@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Sabrina Dias', 'sabrina.dias19@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Thiago Ribeiro', 'thiago.ribeiro20@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ursula Macedo', 'ursula.macedo21@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Vinícius Rocha', 'vinicius.rocha22@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Wanessa Duarte', 'wanessa.duarte23@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Xavier Lopes', 'xavier.lopes24@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Yasmin Souza', 'yasmin.souza25@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Zeca Oliveira', 'zeca.oliveira26@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Amanda Fagundes', 'amanda.fagundes27@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Breno Teixeira', 'breno.teixeira28@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Camila Ramos', 'camila.ramos29@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Daniel Correia', 'daniel.correia30@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Elisa Pires', 'elisa.pries31@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Fernando Almeida', 'fernando.almeida32@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Giovana Castro', 'giovana.castro33@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Heitor Nunes', 'heitor.nunes34@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ivan Mendes', 'ivan.mendes35@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Jéssica Sales', 'jessica.sales36@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Kauã Fonseca', 'kaua.fonseca37@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Larissa Braga', 'larissa.braga38@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Matheus Rezende', 'matheus.rezende39@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Nicole Assis', 'nicole.assis40@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Otávio Freitas', 'otavio.freitas41@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Priscila Lopes', 'priscila.lopes42@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ruan Martins', 'ruan.martins43@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Sara Queiroz', 'sara.queiroz44@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Tales Morais', 'tales.morais45@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Vitória Mendes', 'vitoria.mendes46@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Wellington Cunha', 'wellington.cunha47@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Yuri Cardoso', 'yuri.cardoso48@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Adriana Luz', 'adriana.luz49@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Bernardo Guimarães', 'bernardo.guimaraes50@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Catarina Melo', 'catarina.melo51@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Douglas Saraiva', 'douglas.saraiva52@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Evelyn Teles', 'evelyn.teles53@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Fátima Rocha', 'fatima.rocha54@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Guilherme Prado', 'guilherme.prado55@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Helena Simões', 'helena.simoes56@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ícaro Bezerra', 'icaro.bezerra57@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Júlia Mattos', 'julia.mattos58@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Kelly Santos', 'kelly.santos59@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Leonardo Cunha', 'leonardo.cunha60@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Marcelo Souza', 'marcelo.souza61@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Nathalia Ribeiro', 'nathalia.ribeiro62@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Otília Campos', 'otilia.campos63@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Pedro Lopes', 'pedro.lopes64@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Rafaela Chaves', 'rafaela.chaves65@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Samuel Ferreira', 'samuel.ferreira66@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Talita Moraes', 'talita.moraes67@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Victor Leite', 'victor.leite68@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('William Andrade', 'william.andrade69@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Yolanda Alves', 'yolanda.alves70@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Aline Sampaio', 'aline.sampaio71@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Bárbara Farias', 'barbara.farias72@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('César Melo', 'cesar.melo73@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Denise Oliveira', 'denise.oliveira74@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Everton Moreira', 'everton.moreira75@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Flávia Cunha', 'flavia.cunha76@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Giovanni Mendes', 'giovanni.mendes77@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Hugo Braga', 'hugo.braga78@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ingrid Santos', 'ingrid.santos79@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Jonas Furtado', 'jonas.furtado80@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Keila Oliveira', 'keila.oliveira81@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Luiza Costa', 'luiza.costa82@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Maurício César', 'mauricio.cesar83@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Natália Carvalho', 'natalia.carvalho84@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Orlando Vieira', 'orlando.vieira85@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Patrícia Souza', 'patricia.souza86@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Renato Batista', 'renato.batista87@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Sérgio Barros', 'sergio.barros88@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Tatiane Lopes', 'tatiane.lopes89@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ubirajara Dias', 'ubirajara.dias90@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Vera Lúcia', 'vera.lucia91@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Wesley Braga', 'wesley.braga92@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Yuri Souza', 'yuri.souza93@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Ágatha Neves', 'agatha.neves94@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Beto Mendonça', 'beto.mendonca95@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Carol Linhares', 'carol.linhares96@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Davi Couto', 'davi.couto97@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Eliane Santos', 'eliane.santos98@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Fábio Castro', 'fabio.castro99@example.com', 'senha123');
INSERT INTO users (name, email, password_hash) VALUES ('Gabriel Neri', 'gabriel.neri100@example.com', 'senha123');


CREATE TABLE vagas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    departamento VARCHAR(100),
    localizacao VARCHAR(100),
    descricao TEXT,
    requisitos TEXT,
    beneficios TEXT,
    status VARCHAR(50) DEFAULT 'aberta', 
    criado_por INTEGER REFERENCES usuarios(id),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- insert  das vagas
INSERT INTO vagas (titulo, departamento, localizacao, descricao, requisitos, beneficios, status, criado_por) VALUES
('Desenvolvedor Back-end Júnior', 'Tecnologia', 'São Paulo - SP', 'Desenvolver e manter APIs e sistemas de integração.', 'Node.js, Express, SQL.', 'Vale-refeição, Plano odontológico.', 'aberta', 1),
('Analista de Suporte Técnico', 'Tecnologia', 'Campinas - SP', 'Atender chamados técnicos e resolver problemas de usuários.', 'Conhecimento em redes e sistemas operacionais.', 'Vale-transporte, Plano de saúde.', 'aberta', 1),
('Designer UX/UI', 'Design', 'Rio de Janeiro - RJ', 'Criar experiências de usuário intuitivas para produtos digitais.', 'Figma, Adobe XD, Design System.', 'Horário flexível, Home office.', 'aberta', 1),
('Analista de Marketing Digital', 'Marketing', 'Curitiba - PR', 'Planejar e executar campanhas de marketing digital.', 'Google Ads, SEO, redes sociais.', 'Vale-alimentação, Plano de carreira.', 'aberta', 1),
('Engenheiro de Dados', 'Tecnologia', 'São Paulo - SP', 'Projetar e otimizar pipelines de dados.', 'Python, SQL, ETL, BigQuery.', 'Plano de saúde, VR.', 'aberta', 1),
('Desenvolvedor Mobile Flutter', 'Tecnologia', 'Recife - PE', 'Desenvolver aplicativos móveis multiplataforma.', 'Flutter, Dart, Git.', 'Auxílio home office, VA.', 'aberta', 1),
('Analista de RH Pleno', 'Recursos Humanos', 'Belo Horizonte - MG', 'Gerenciar processos de recrutamento e seleção.', 'Experiência com entrevistas e avaliação de perfil.', 'Plano odontológico, Gympass.', 'aberta', 1),
('Coordenador de Projetos', 'Gestão', 'São Paulo - SP', 'Liderar times e monitorar cronogramas de projetos.', 'Scrum, Kanban, liderança.', 'Bônus por resultados, VR.', 'aberta', 1),
('Estagiário de TI', 'Tecnologia', 'Fortaleza - CE', 'Auxiliar na manutenção de sistemas internos.', 'Noções de hardware e redes.', 'Bolsa auxílio, Vale transporte.', 'aberta', 1),
('Desenvolvedor Full Stack Pleno', 'Tecnologia', 'São Paulo - SP', 'Desenvolver soluções completas para sistemas web.', 'React, Node.js, MySQL.', 'Plano de saúde, VA.', 'aberta', 1),
('Analista de Comunicação', 'Comunicação', 'Curitiba - PR', 'Elaborar conteúdos institucionais e campanhas internas.', 'Redação, mídias digitais.', 'Home office, Plano médico.', 'aberta', 1),
('Assistente Administrativo', 'Administrativo', 'Florianópolis - SC', 'Organizar documentos e auxiliar em rotinas administrativas.', 'Pacote Office, organização.', 'Vale-transporte, VA.', 'aberta', 1),
('Analista de QA', 'Tecnologia', 'São Paulo - SP', 'Criar e executar testes de software.', 'Selenium, Cypress, Postman.', 'Plano odontológico, VR.', 'aberta', 1),
('Desenvolvedor Java', 'Tecnologia', 'Porto Alegre - RS', 'Atuar no desenvolvimento e manutenção de sistemas Java.', 'Java, Spring Boot, SQL.', 'Vale alimentação, PLR.', 'aberta', 1),
('Cientista de Dados', 'Tecnologia', 'São Paulo - SP', 'Analisar dados e criar modelos preditivos.', 'Python, Machine Learning, Pandas.', 'Plano de saúde, VA.', 'aberta', 1),
('Técnico em Redes', 'Infraestrutura', 'Campinas - SP', 'Instalar e configurar equipamentos de rede.', 'TCP/IP, roteadores, switches.', 'Vale transporte, Seguro de vida.', 'aberta', 1),
('Gerente de Projetos', 'Gestão', 'São Paulo - SP', 'Gerenciar equipes e prazos de entregas.', 'PMP, Scrum, liderança.', 'Plano de saúde, bônus anual.', 'aberta', 1),
('Analista Financeiro', 'Financeiro', 'Belo Horizonte - MG', 'Controlar despesas e elaborar relatórios financeiros.', 'Excel avançado, ERP.', 'VR, Plano odontológico.', 'aberta', 1),
('Assistente de Logística', 'Logística', 'Recife - PE', 'Auxiliar na gestão de transporte e estoque.', 'Pacote Office, atenção a detalhes.', 'VT, VR.', 'aberta', 1),
('Desenvolvedor Python', 'Tecnologia', 'São Paulo - SP', 'Criar automações e APIs em Python.', 'Python, Flask, SQLAlchemy.', 'Home office, VR.', 'aberta', 1),
('Especialista em SEO', 'Marketing', 'Curitiba - PR', 'Otimizar sites e conteúdos para mecanismos de busca.', 'SEO, Google Analytics.', 'VA, Plano de carreira.', 'aberta', 1),
('Redator Publicitário', 'Marketing', 'Rio de Janeiro - RJ', 'Criar textos e campanhas criativas.', 'Copywriting, Storytelling.', 'Home office, VR.', 'aberta', 1),
('Analista de Compras', 'Financeiro', 'São Paulo - SP', 'Gerenciar fornecedores e cotações de materiais.', 'Negociação, Excel.', 'VT, VR, plano médico.', 'aberta', 1),
('Desenvolvedor React Native', 'Tecnologia', 'Belo Horizonte - MG', 'Desenvolver apps híbridos para iOS e Android.', 'React Native, APIs REST.', 'VA, PLR.', 'aberta', 1),
('Analista de Testes', 'Tecnologia', 'Campinas - SP', 'Executar testes e validar entregas de software.', 'JIRA, automação de testes.', 'Plano de saúde, VT.', 'aberta', 1),
('Designer Gráfico', 'Design', 'São Paulo - SP', 'Criar artes e materiais visuais para campanhas.', 'Photoshop, Illustrator.', 'Home office, VR.', 'aberta', 1),
('Engenheiro de Software', 'Tecnologia', 'Florianópolis - SC', 'Projetar e desenvolver soluções escaláveis.', 'C#, .NET, AWS.', 'Plano de saúde, VA.', 'aberta', 1),
('Coordenador de RH', 'Recursos Humanos', 'Rio de Janeiro - RJ', 'Gerenciar políticas e práticas de RH.', 'Gestão de pessoas, legislação.', 'Bônus, Gympass.', 'aberta', 1),
('Analista de Infraestrutura', 'Infraestrutura', 'Curitiba - PR', 'Administrar servidores e redes corporativas.', 'Linux, Windows Server.', 'Plano de saúde, VT.', 'aberta', 1),
('Desenvolvedor Front-End Sênior', 'Tecnologia', 'São Paulo - SP', 'Liderar desenvolvimento de interfaces responsivas.', 'React, TypeScript, Git.', 'PLR, VR.', 'aberta', 1),
('Especialista em Cloud', 'Tecnologia', 'São Paulo - SP', 'Gerenciar ambientes em nuvem.', 'AWS, Azure, DevOps.', 'Plano de saúde, VR.', 'aberta', 1),
('Analista de Dados', 'Tecnologia', 'Recife - PE', 'Gerar relatórios e dashboards de performance.', 'SQL, Power BI, Excel.', 'VT, VA.', 'aberta', 1),
('Desenvolvedor PHP', 'Tecnologia', 'Curitiba - PR', 'Manter e evoluir sistemas PHP.', 'PHP, Laravel, MySQL.', 'Plano de saúde, VR.', 'aberta', 1),
('Coordenador de Marketing', 'Marketing', 'São Paulo - SP', 'Liderar equipe de marketing digital e campanhas.', 'Gestão de equipe, SEO, Ads.', 'Plano de saúde, bônus.', 'aberta', 1),
('Analista de Treinamento', 'RH', 'Porto Alegre - RS', 'Desenvolver e aplicar treinamentos internos.', 'Didática, comunicação.', 'VA, Plano odontológico.', 'aberta', 1),
('Estagiário de Design', 'Design', 'Florianópolis - SC', 'Apoiar a criação de layouts e peças digitais.', 'Photoshop, Figma.', 'Bolsa auxílio, VR.', 'aberta', 1),
('Analista Contábil', 'Financeiro', 'Belo Horizonte - MG', 'Executar lançamentos e conciliações contábeis.', 'Contabilidade, Excel.', 'VR, Plano de saúde.', 'aberta', 1),
('Analista de E-commerce', 'Vendas', 'São Paulo - SP', 'Gerenciar lojas virtuais e campanhas online.', 'Shopify, Google Ads.', 'VA, Home office.', 'aberta', 1),
('Desenvolvedor C#', 'Tecnologia', 'Campinas - SP', 'Desenvolver sistemas em .NET.', 'C#, ASP.NET, SQL Server.', 'Plano de saúde, VA.', 'aberta', 1),
('Engenheiro de QA', 'Tecnologia', 'São Paulo - SP', 'Desenhar e implementar estratégias de testes.', 'Testes automatizados, API.', 'VR, plano médico.', 'aberta', 1),
('Analista de Segurança da Informação', 'Tecnologia', 'Rio de Janeiro - RJ', 'Proteger sistemas contra ameaças digitais.', 'Firewall, SIEM, ISO 27001.', 'Plano de saúde, Gympass.', 'aberta', 1),
('Consultor de Vendas', 'Vendas', 'Belo Horizonte - MG', 'Realizar prospecção e fechamento de contratos.', 'Técnicas de vendas, CRM.', 'Comissões, VR.', 'aberta', 1),
('Gerente Comercial', 'Vendas', 'São Paulo - SP', 'Gerir equipe de vendas e metas regionais.', 'Liderança, negociação.', 'Plano de saúde, bônus.', 'aberta', 1),
('Estagiário de Marketing', 'Marketing', 'Curitiba - PR', 'Auxiliar na produção de conteúdo digital.', 'Redes sociais, Canva.', 'Bolsa, VT.', 'aberta', 1),
('Desenvolvedor Front-End React', 'Tecnologia', 'São Paulo - SP', 'Construir interfaces web modernas.', 'React, JavaScript, CSS.', 'VA, Home office.', 'aberta', 1),
('Analista de BI', 'Tecnologia', 'Recife - PE', 'Criar relatórios e dashboards estratégicos.', 'Power BI, SQL.', 'VR, Plano médico.', 'aberta', 1),
('Analista de Produto', 'Produto', 'Florianópolis - SC', 'Atuar no ciclo de vida de produtos digitais.', 'Gestão ágil, UX.', 'Plano de saúde, VA.', 'aberta', 1),
('Engenheiro DevOps', 'Tecnologia', 'São Paulo - SP', 'Automatizar processos e integrar sistemas.', 'Docker, CI/CD, Linux.', 'Plano médico, VA.', 'aberta', 1),
('Analista de Sistemas', 'Tecnologia', 'Campinas - SP', 'Analisar e propor melhorias em sistemas.', 'SQL, UML, requisitos.', 'VR, VT.', 'aberta', 1),
('Analista de Conteúdo', 'Marketing', 'Curitiba - PR', 'Produzir conteúdo para blog e redes.', 'SEO, Copywriting.', 'VA, Home office.', 'aberta', 1),
('Técnico em Informática', 'Suporte', 'Fortaleza - CE', 'Realizar manutenção de equipamentos e suporte a usuários.', 'Hardware, redes.', 'VT, VR.', 'aberta', 1),
('Desenvolvedor WordPress', 'Tecnologia', 'São Paulo - SP', 'Criar e manter sites em WordPress.', 'PHP, CSS, Elementor.', 'VA, Home office.', 'aberta', 1),
('Coordenador Financeiro', 'Financeiro', 'Rio de Janeiro - RJ', 'Gerenciar fluxo de caixa e relatórios.', 'Excel, gestão financeira.', 'Plano de saúde, bônus.', 'aberta', 1),
('Analista de Mídia Paga', 'Marketing', 'São Paulo - SP', 'Gerenciar campanhas de anúncios online.', 'Google Ads, Meta Ads.', 'VA, Home office.', 'aberta', 1),
('Desenvolvedor Angular', 'Tecnologia', 'Porto Alegre - RS', 'Desenvolver sistemas front-end em Angular.', 'Angular, TypeScript.', 'Plano de saúde, VR.', 'aberta', 1),
('Analista de Projetos', 'Gestão', 'Curitiba - PR', 'Acompanhar cronogramas e status de projetos.', 'MS Project, Scrum.', 'VR, plano odontológico.', 'aberta', 1),
('Estagiário de RH', 'Recursos Humanos', 'Belo Horizonte - MG', 'Apoiar nas rotinas de recrutamento e seleção.', 'Comunicação, organização.', 'Bolsa, VT.', 'aberta', 1),
('Desenvolvedor JavaScript', 'Tecnologia', 'São Paulo - SP', 'Programar funcionalidades interativas para sites.', 'JS, HTML, CSS.', 'VR, Plano médico.', 'aberta', 1),
('Administrador de Banco de Dados', 'Tecnologia', 'Curitiba - PR', 'Gerenciar e otimizar bancos de dados.', 'SQL Server, PostgreSQL.', 'VA, plano de saúde.', 'aberta', 1),
('Analista de CRM', 'Marketing', 'São Paulo - SP', 'Gerenciar campanhas e relacionamento com clientes.', 'CRM, automação de marketing.', 'VR, Home office.', 'aberta', 1),
('Técnico de Suporte Júnior', 'Tecnologia', 'Campinas - SP', 'Prestar suporte técnico aos usuários internos.', 'Windows, redes.', 'VA, VT.', 'aberta', 1),
('Arquiteto de Software', 'Tecnologia', 'São Paulo - SP', 'Definir arquitetura e padrões de desenvolvimento.', 'Microserviços, AWS.', 'PLR, VR.', 'aberta', 1),
('Analista de Expansão', 'Comercial', 'Recife - PE', 'Prospectar novas oportunidades de negócios.', 'Excel, comunicação.', 'VR, plano de saúde.', 'aberta', 1),
('Desenvolvedor Kotlin', 'Tecnologia', 'São Paulo - SP', 'Desenvolver aplicativos Android nativos.', 'Kotlin, Android Studio.', 'VA, home office.', 'aberta', 1),
('Analista de Pagamentos', 'Financeiro', 'Rio de Janeiro - RJ', 'Gerenciar contas a pagar e receber.', 'ERP, Excel.', 'VR, Plano médico.', 'aberta', 1),
('Engenheiro de Machine Learning', 'Tecnologia', 'São Paulo - SP', 'Desenvolver modelos de IA e aprendizado de máquina.', 'Python, TensorFlow.', 'Plano de saúde, bônus.', 'aberta', 1),
('Product Owner', 'Produto', 'Curitiba - PR', 'Gerenciar backlog e priorizar demandas de produto.', 'Scrum, UX.', 'VA, home office.', 'aberta', 1),
('Scrum Master', 'Gestão', 'São Paulo - SP', 'Facilitar cerimônias ágeis e apoiar o time.', 'Scrum, Kanban, comunicação.', 'Plano de saúde, VR.', 'aberta', 1),
('Analista de Operações', 'Administrativo', 'Belo Horizonte - MG', 'Acompanhar processos internos e indicadores.', 'Excel, organização.', 'VA, plano odontológico.', 'aberta', 1),
('Desenvolvedor Vue.js', 'Tecnologia', 'Porto Alegre - RS', 'Criar interfaces reativas e dinâmicas.', 'Vue.js, JavaScript, CSS.', 'VR, home office.', 'aberta', 1),
('Analista de Negócios', 'Gestão', 'São Paulo - SP', 'Levantar requisitos e propor soluções.', 'Documentação, SQL.', 'Plano médico, VR.', 'aberta', 1),
('Gerente de TI', 'Tecnologia', 'São Paulo - SP', 'Gerir equipe técnica e infraestrutura de TI.', 'Gestão de equipes, segurança.', 'Plano de saúde, bônus.', 'aberta', 1),
('Desenvolvedor PL/SQL', 'Tecnologia', 'Campinas - SP', 'Criar e manter procedures e triggers em banco Oracle.', 'PL/SQL, Oracle.', 'VA, VT.', 'aberta', 1),
('Especialista em Redes', 'Infraestrutura', 'Curitiba - PR', 'Administrar redes corporativas e firewalls.', 'Cisco, VLAN, VPN.', 'VR, plano médico.', 'aberta', 1),
('Analista de Suporte Sênior', 'Tecnologia', 'São Paulo - SP', 'Dar suporte avançado a sistemas internos.', 'Linux, Windows, AD.', 'VR, Plano de saúde.', 'aberta', 1);




('Desenvolvedor Backend Pleno', 'Tecnologia', 'São Paulo - SP', 'Atuação no desenvolvimento de APIs e microsserviços em Python e Node.js.', 'Experiência com Django, REST, Docker e bancos relacionais.', 'Vale-refeição, plano de saúde e bônus anual.', 'fechada', 1),

('Analista de Marketing Digital', 'Marketing', 'Remoto', 'Responsável por campanhas de mídia paga e SEO.', 'Domínio de Google Ads, Meta Ads e Google Analytics.', 'Horário flexível e auxílio home office.', 'fechada', 2),

('Engenheiro de Dados', 'Tecnologia', 'Belo Horizonte - MG', 'Desenvolver pipelines de dados e modelagem de Data Lake.', 'Conhecimento em Spark, Python e SQL.', 'Plano odontológico e vale-alimentação.', 'fechada', 3),

('Designer UX/UI', 'Design', 'Curitiba - PR', 'Criação de interfaces digitais e protótipos de alta fidelidade.', 'Figma, noções de HTML/CSS e boas práticas de acessibilidade.', 'Day off de aniversário e vale-cultura.', 'fechada', 4),

('Gerente de Projetos', 'PMO', 'Rio de Janeiro - RJ', 'Gestão de cronogramas, riscos e recursos de projetos ágeis.', 'Certificação PMP ou Scrum Master.', 'Bônus por performance e previdência privada.', 'fechada', 5),

('Analista Financeiro Júnior', 'Financeiro', 'São Paulo - SP', 'Controle de contas a pagar e conciliação bancária.', 'Excel avançado e noções de contabilidade.', 'Vale-transporte e plano de saúde.', 'fechada', 6),

('Coordenador de RH', 'Recursos Humanos', 'Porto Alegre - RS', 'Gestão de equipe de recrutamento e folha de pagamento.', 'Experiência em liderança e legislação trabalhista.', 'Plano de carreira e gympass.', 'fechada', 7),

('Analista de Suporte Técnico', 'Tecnologia', 'Recife - PE', 'Atendimento de chamados e manutenção de sistemas internos.', 'Conhecimento em Linux, redes e hardware.', 'Vale-refeição e assistência médica.', 'fechada', 8),

('Engenheiro de Software Sênior', 'Tecnologia', 'Florianópolis - SC', 'Desenvolvimento de sistemas escaláveis e de alta disponibilidade.', 'Experiência com AWS, Go e arquitetura distribuída.', 'Stock options e plano de saúde premium.', 'fechada', 9),

('Especialista em Segurança da Informação', 'Tecnologia', 'São Paulo - SP', 'Implementação de políticas de segurança e gestão de vulnerabilidades.', 'Certificações CISSP ou CompTIA Security+.','Bônus anual e trabalho híbrido.', 'fechada', 10),

('Analista de Dados', 'Business Intelligence', 'Remoto', 'Criação de dashboards e relatórios estratégicos.', 'Power BI, SQL e Python.', 'Auxílio home office e cursos online.', 'fechada', 11),

('Estagiário de Desenvolvimento', 'Tecnologia', 'São Paulo - SP', 'Apoiar a equipe de desenvolvimento em projetos internos.', 'Conhecimentos básicos em JavaScript e Git.', 'Bolsa auxílio e vale-transporte.', 'fechada', 12),

('Assistente Administrativo', 'Administrativo', 'Campinas - SP', 'Organização de documentos e apoio em rotinas administrativas.', 'Boa comunicação e domínio do pacote Office.', 'Vale-refeição e assistência odontológica.', 'fechada', 13),

('Coordenador de Vendas', 'Comercial', 'Fortaleza - CE', 'Gestão de equipe de representantes e metas regionais.', 'Experiência em CRM e gestão comercial.', 'Comissões e carro da empresa.', 'fechada', 14),

('Desenvolvedor Frontend React', 'Tecnologia', 'Remoto', 'Desenvolvimento de interfaces web responsivas em React.', 'JavaScript, React, Redux e testes automatizados.', 'Trabalho remoto integral e bônus anual.', 'fechada', 15),

('Analista de Produto', 'Produto', 'São Paulo - SP', 'Gestão de backlog e definição de roadmap de produtos.', 'Experiência em metodologias ágeis e análise de métricas.', 'Ambiente colaborativo e plano odontológico.', 'fechada', 16),

('Redator de Conteúdo', 'Marketing', 'Curitiba - PR', 'Criação de conteúdo para blogs e redes sociais.', 'Excelente escrita e noções de SEO.', 'Horário flexível e vale-cultura.', 'fechada', 17),

('Arquiteto de Software', 'Tecnologia', 'Belo Horizonte - MG', 'Definição de padrões e arquitetura de sistemas complexos.', 'Experiência com microserviços e cloud computing.', 'Participação nos lucros e plano de saúde.', 'fechada', 18),

('Técnico de Infraestrutura', 'TI', 'Porto Alegre - RS', 'Manutenção de servidores e redes corporativas.', 'Conhecimentos em VMware e Windows Server.', 'Auxílio transporte e refeitório no local.', 'fechada', 19),

('Analista de Qualidade de Software', 'QA', 'São Paulo - SP', 'Planejamento e execução de testes automatizados e manuais.', 'Selenium, Cypress e metodologia ágil.', 'Plano de saúde e vale-refeição.', 'fechada', 20);


CREATE TABLE candidatos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    telefone VARCHAR(50),
    curriculo_url TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- inserts de candidatos

INSERT INTO candidatos(nome, email, telefone, curriculo_url) VALUES
('Ana Rodrigues', 'ana.rodrigues@example.com', '(11)98877-1001', 'curriculos/ana_rodrigues.pdf'),
('Bruno Silva', 'bruno.silva@example.com', '(21)97766-1002', 'curriculos/bruno_silva.pdf'),
('Carla Mendes', 'carla.mendes@example.com', '(31)96555-1003', 'curriculos/carla_mendes.pdf'),
('Diego Souza', 'diego.souza@example.com', '(41)95444-1004', 'curriculos/diego_souza.pdf'),
('Eduarda Lima', 'eduarda.lima@example.com', '(71)94333-1005', 'curriculos/eduarda_lima.pdf'),
('Fernando Alves', 'fernando.alves@example.com', '(51)93222-1006', 'curriculos/fernando_alves.pdf'),
('Gabriela Castro', 'gabriela.castro@example.com', '(61)92111-1007', 'curriculos/gabriela_castro.pdf'),
('Henrique Duarte', 'henrique.duarte@example.com', '(11)91234-1008', 'curriculos/henrique_duarte.pdf'),
('Isabela Gomes', 'isabela.gomes@example.com', '(21)98765-1009', 'curriculos/isabela_gomes.pdf'),
('João Oliveira', 'joao.oliveira@example.com', '(31)97654-1010', 'curriculos/joao_oliveira.pdf'),
('Karina Souza', 'karina.souza@example.com', '(41)96543-1011', 'curriculos/karina_souza.pdf'),
('Lucas Pereira', 'lucas.pereira@example.com', '(71)95432-1012', 'curriculos/lucas_pereira.pdf'),
('Mariana Alves', 'mariana.alves@example.com', '(51)94321-1013', 'curriculos/mariana_alves.pdf'),
('Nicolas Rocha', 'nicolas.rocha@example.com', '(61)93210-1014', 'curriculos/nicolas_rocha.pdf'),
('Olivia Ramos', 'olivia.ramos@example.com', '(11)92109-1015', 'curriculos/olivia_ramos.pdf'),
('Paulo Araujo', 'paulo.araujo@example.com', '(21)91298-1016', 'curriculos/paulo_araujo.pdf'),
('Quezia Tavares', 'quezia.tavares@example.com', '(31)98712-1017', 'curriculos/quezia_tavares.pdf'),
('Rafael Nunes', 'rafael.nunes@example.com', '(41)97623-1018', 'curriculos/rafael_nunes.pdf'),
('Sara Santos', 'sara.santos@example.com', '(71)96534-1019', 'curriculos/sara_santos.pdf'),
('Thiago Pinto', 'thiago.pinto@example.com', '(51)95445-1020', 'curriculos/thiago_pinto.pdf'),
('Ubirajara Melo', 'ubirajara.melo@example.com', '(61)94356-1021', 'curriculos/ubirajara_melo.pdf'),
('Valentina Costa', 'valentina.costa@example.com', '(11)93267-1022', 'curriculos/valentina_costa.pdf'),
('William Paiva', 'william.paiva@example.com', '(21)92178-1023', 'curriculos/william_paiva.pdf'),
('Ximena Sousa', 'ximena.sousa@example.com', '(31)91289-1024', 'curriculos/ximena_sousa.pdf'),
('Yara Matos', 'yara.matos@example.com', '(41)98790-1025', 'curriculos/yara_matos.pdf'),
('Zeca Rodrigues', 'zeca.rodrigues@example.com', '(71)97601-1026', 'curriculos/zeca_rodrigues.pdf'),
('Alice Cunha', 'alice.cunha@example.com', '(51)96512-1027', 'curriculos/alice_cunha.pdf'),
('Brenda Mendonça', 'brenda.mendonca@example.com', '(61)95423-1028', 'curriculos/brenda_mendonca.pdf'),
('Caio Castro', 'caio.castro@example.com', '(11)94334-1029', 'curriculos/caio_castro.pdf'),
('Daniela Correia', 'daniela.correia@example.com', '(21)93245-1030', 'curriculos/daniela_correia.pdf'),
('Eduardo Teles', 'eduardo.teles@example.com', '(31)92156-1031', 'curriculos/eduardo_teles.pdf'),
('Fabiana Prado', 'fabiana.prado@example.com', '(41)91267-1032', 'curriculos/fabiana_prado.pdf'),
('Guilherme Souza', 'guilherme.souza@example.com', '(71)98778-1033', 'curriculos/guilherme_souza.pdf'),
('Helena Duarte', 'helena.duarte@example.com', '(51)97689-1034', 'curriculos/helena_duarte.pdf'),
('Igor Figueiredo', 'igor.figueiredo@example.com', '(61)96590-1035', 'curriculos/igor_figueiredo.pdf'),
('Juliana Ferreira', 'juliana.ferreira@example.com', '(11)95401-1036', 'curriculos/juliana_ferreira.pdf'),
('Kaique Santos', 'kaique.santos@example.com', '(21)94312-1037', 'curriculos/kaique_santos.pdf'),
('Larissa Costa', 'larissa.costa@example.com', '(31)93223-1038', 'curriculos/larissa_costa.pdf'),
('Matheus Prado', 'matheus.prado@example.com', '(41)92134-1039', 'curriculos/matheus_prado.pdf'),
('Natália Guimarães', 'natalia.guimaraes@example.com', '(71)91245-1040', 'curriculos/natalia_guimaraes.pdf'),
('Otávio Ramos', 'otavio.ramos@example.com', '(51)98756-1041', 'curriculos/otavio_ramos.pdf'),
('Patrícia Borges', 'patricia.borges@example.com', '(61)97667-1042', 'curriculos/patricia_borges.pdf'),
('Renan Martins', 'renan.martins@example.com', '(11)96578-1043', 'curriculos/renan_martins.pdf'),
('Simone Passos', 'simone.passos@example.com', '(21)95489-1044', 'curriculos/simone_passos.pdf'),
('Tiago Carvalho', 'tiago.carvalho@example.com', '(31)94390-1045', 'curriculos/tiago_carvalho.pdf'),
('Ursula Prado', 'ursula.prado@example.com', '(41)93201-1046', 'curriculos/ursula_prado.pdf'),
('Vitor Azevedo', 'vitor.azevedo@example.com', '(71)92112-1047', 'curriculos/vitor_azevedo.pdf'),
('Wesley Silva', 'wesley.silva@example.com', '(51)91223-1048', 'curriculos/wesley_silva.pdf'),
('Xavier Moraes', 'xavier.moraes@example.com', '(61)98734-1049', 'curriculos/xavier_moraes.pdf'),
('Yasmin Freitas', 'yasmin.freitas@example.com', '(11)97645-1050', 'curriculos/yasmin_freitas.pdf'),
('Arthur Monteiro', 'arthur.monteiro@example.com', '(21)96556-1051', 'curriculos/arthur_monteiro.pdf'),
('Bianca Dias', 'bianca.dias@example.com', '(31)95467-1052', 'curriculos/bianca_dias.pdf'),
('Claudio Campos', 'claudio.campos@example.com', '(41)94378-1053', 'curriculos/claudio_campos.pdf'),
('Danilo Moura', 'danilo.moura@example.com', '(71)93289-1054', 'curriculos/danilo_moura.pdf'),
('Elisa Andrade', 'elisa.andrade@example.com', '(51)92190-1055', 'curriculos/elisa_andrade.pdf'),
('Felipe Souza', 'felipe.souza@example.com', '(61)91201-1056', 'curriculos/felipe_souza.pdf'),
('Giovanna Cavalcante', 'giovanna.cavalcante@example.com', '(11)98712-1057', 'curriculos/giovanna_cavalcante.pdf'),
('Hugo Torres', 'hugo.torres@example.com', '(21)97623-1058', 'curriculos/hugo_torres.pdf'),
('Ingrid Barros', 'ingrid.barros@example.com', '(31)96534-1059', 'curriculos/ingrid_barros.pdf'),
('José Fernandes', 'jose.fernandes@example.com', '(41)95445-1060', 'curriculos/jose_fernandes.pdf'),
('Karla Ribeiro', 'karla.ribeiro@example.com', '(71)94356-1061', 'curriculos/karla_ribeiro.pdf'),
('Leandro Martins', 'leandro.martins@example.com', '(51)93267-1062', 'curriculos/leandro_martins.pdf'),
('Marcela Souza', 'marcela.souza@example.com', '(61)92178-1063', 'curriculos/marcela_souza.pdf'),
('Nathan Ramos', 'nathan.ramos@example.com', '(11)91289-1064', 'curriculos/nathan_ramos.pdf'),
('Olga Ferreira', 'olga.ferreira@example.com', '(21)98790-1065', 'curriculos/olga_ferreira.pdf'),
('Peter Almeida', 'peter.almeida@example.com', '(31)97601-1066', 'curriculos/peter_almeida.pdf'),
('Raquel Monteiro', 'raquel.monteiro@example.com', '(41)96512-1067', 'curriculos/raquel_monteiro.pdf'),
('Samuel Costa', 'samuel.costa@example.com', '(71)95423-1068', 'curriculos/samuel_costa.pdf'),
('Talita Meireles', 'talita.meireles@example.com', '(51)94334-1069', 'curriculos/talita_meireles.pdf'),
('Uelinton Braga', 'uelinton.braga@example.com', '(61)93245-1070', 'curriculos/uelinton_braga.pdf'),
('Viviane Teles', 'viviane.teles@example.com', '(11)92156-1071', 'curriculos/viviane_teles.pdf'),
('Wagner Rocha', 'wagner.rocha@example.com', '(21)91267-1072', 'curriculos/wagner_rocha.pdf'),
('Xuxa Ramos', 'xuxa.ramos@example.com', '(31)98778-1073', 'curriculos/xuxa_ramos.pdf'),
('Yuri Pires', 'yuri.pires@example.com', '(41)97689-1074', 'curriculos/yuri_pires.pdf'),
('Amélia Correia', 'amelia.correia@example.com', '(71)96590-1075', 'curriculos/amelia_correia.pdf'),
('Bernardo Cordeiro', 'bernardo.cordeiro@example.com', '(51)95401-1076', 'curriculos/bernardo_cordeiro.pdf'),
('Cristina Cachoeira', 'cristina.cachoeira@example.com', '(61)94312-1077', 'curriculos/cristina_cachoeira.pdf'),
('Daniel Ribeiro', 'daniel.ribeiro@example.com', '(11)93223-1078', 'curriculos/daniel_ribeiro.pdf'),
('Elaine Mendes', 'elaine.mendes@example.com', '(21)92134-1079', 'curriculos/elaine_mendes.pdf'),
('Flávio Torres', 'flavio.torres@example.com', '(31)91245-1080', 'curriculos/flavio_torres.pdf'),
('Gisele Barbosa', 'gisele.barbosa@example.com', '(41)98756-1081', 'curriculos/gisele_barbosa.pdf'),
('Hernani Porto', 'hernani.porto@example.com', '(71)97667-1082', 'curriculos/hernani_porto.pdf'),
('Iara Viana', 'iara.viana@example.com', '(51)96578-1083', 'curriculos/iara_viana.pdf'),
('Jonas Teixeira', 'jonas.teixeira@example.com', '(61)95489-1084', 'curriculos/jonas_teixeira.pdf'),
('Kelly Antunes', 'kelly.antunes@example.com', '(11)94390-1085', 'curriculos/kelly_antunes.pdf'),
('Luiz Felipe Costa', 'luizfelipe.costa@example.com', '(21)93201-1086', 'curriculos/luizfelipe_costa.pdf'),
('Marcelo Diniz', 'marcelo.diniz@example.com', '(31)92112-1087', 'curriculos/marcelo_diniz.pdf'),
('Nicole Dias', 'nicole.dias@example.com', '(41)91223-1088', 'curriculos/nicole_dias.pdf'),
('Otília Vasconcelos', 'otilia.vasconcelos@example.com', '(71)98734-1089', 'curriculos/otilia_vasconcelos.pdf'),
('Pâmela Lira', 'pamela.lira@example.com', '(51)97645-1090', 'curriculos/pamela_lira.pdf'),
('Rômulo Castro', 'romulo.castro@example.com', '(61)96556-1091', 'curriculos/romulo_castro.pdf'),
('Sabrina Nobre', 'sabrina.nobre@example.com', '(11)95467-1092', 'curriculos/sabrina_nobre.pdf'),
('Thiago Menezes', 'thiago.menezes@example.com', '(21)94378-1093', 'curriculos/thiago_menezes.pdf'),
('Ulisses Borges', 'ulisses.borges@example.com', '(31)93289-1094', 'curriculos/ulisses_borges.pdf'),
('Vânia Cruz', 'vania.cruz@example.com', '(41)92190-1095', 'curriculos/vania_cruz.pdf'),
('Wellington Farias', 'wellington.farias@example.com', '(71)91201-1096', 'curriculos/wellington_farias.pdf'),
('Zilma Andrade', 'zilma.andrade@example.com', '(51)98712-1097', 'curriculos/zilma_andrade.pdf'),
('Ariane Silva', 'ariane.silva@example.com', '(61)97623-1098', 'curriculos/ariane_silva.pdf'),
('Beto Oliveira', 'beto.oliveira@example.com', '(11)96534-1099', 'curriculos/beto_oliveira.pdf'),
('Camila Moraes', 'camila.moraes@example.com', '(21)95445-1100', 'curriculos/camila_moraes.pdf');


CREATE TABLE candidaturas (
    id SERIAL PRIMARY KEY,
    job_id INTEGER REFERENCES vagas(id),
    candidate_id INTEGER REFERENCES candidatos(id),
    etapa VARCHAR(50) DEFAULT 'triagem', 
    data_candidatura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (job_id, candidate_id) 
);

-- inserts de candidaturas
INSERT INTO candidaturas (job_id, candidate_id, etapa) VALUES
(1, 1, 'triagem'),
(1, 2, 'triagem'),
(2, 3, 'entrevista'),
(2, 4, 'triagem'),
(3, 5, 'triagem'),
(3, 6, 'entrevista'),
(4, 7, 'triagem'),
(4, 8, 'triagem'),
(5, 9, 'triagem'),
(5, 10, 'entrevista'),
(6, 11, 'triagem'),
(6, 12, 'triagem'),
(7, 13, 'triagem'),
(7, 14, 'entrevista'),
(8, 15, 'triagem'),
(8, 16, 'oferta'),
(9, 17, 'triagem'),
(9, 18, 'triagem'),
(10, 19, 'triagem'),
(10, 20, 'entrevista'),
(11, 21, 'entrevista'),
(11, 22, 'triagem'),
(12, 23, 'triagem'),
(12, 24, 'entrevista'),
(13, 25, 'triagem'),
(13, 26, 'triagem'),
(14, 27, 'entrevista'),
(14, 28, 'triagem'),
(15, 29, 'triagem'),
(15, 30, 'triagem'),
(16, 31, 'triagem'),
(16, 32, 'entrevista'),
(17, 33, 'entrevista'),
(17, 34, 'triagem'),
(18, 35, 'triagem'),
(18, 36, 'triagem'),
(19, 37, 'oferta'),
(19, 38, 'triagem'),
(20, 39, 'triagem'),
(20, 40, 'entrevista'),
(21, 41, 'triagem'),
(21, 42, 'triagem'),
(22, 43, 'triagem'),
(22, 44, 'entrevista'),
(23, 45, 'triagem'),
(23, 46, 'triagem'),
(24, 47, 'triagem'),
(24, 48, 'oferta'),
(25, 49, 'triagem'),
(25, 50, 'triagem'),
(26, 51, 'triagem'),
(26, 52, 'entrevista'),
(27, 53, 'triagem'),
(27, 54, 'triagem'),
(28, 55, 'triagem'),
(28, 56, 'entrevista'),
(29, 57, 'triagem'),
(29, 58, 'triagem'),
(30, 59, 'triagem'),
(30, 60, 'entrevista'),
(31, 61, 'triagem'),
(31, 62, 'oferta'),
(32, 63, 'triagem'),
(32, 64, 'triagem'),
(33, 65, 'triagem'),
(33, 66, 'triagem'),
(34, 67, 'triagem'),
(34, 68, 'triagem'),
(35, 69, 'triagem'),
(35, 70, 'entrevista'),
(36, 71, 'triagem'),
(36, 72, 'triagem'),
(37, 73, 'triagem'),
(37, 74, 'entrevista'),
(38, 75, 'triagem'),
(38, 76, 'triagem'),
(39, 77, 'entrevista'),
(39, 78, 'oferta'),
(40, 79, 'triagem'),
(40, 80, 'entrevista'),
(41, 81, 'triagem'),
(41, 82, 'triagem'),
(42, 83, 'triagem'),
(42, 84, 'triagem'),
(43, 85, 'entrevista'),
(43, 86, 'triagem'),
(44, 87, 'triagem'),
(44, 88, 'triagem'),
(45, 89, 'triagem'),
(45, 90, 'entrevista'),
(46, 91, 'triagem'),
(46, 92, 'triagem'),
(47, 93, 'triagem'),
(47, 94, 'entrevista'),
(48, 95, 'oferta'),
(48, 96, 'triagem'),
(49, 97, 'triagem'),
(49, 98, 'triagem'),
(50, 99, 'triagem'),
(50, 100, 'contratado');


