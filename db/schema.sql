-- Esquema do banco da aplicação de tarefas.
CREATE TABLE IF NOT EXISTS tarefas (
id
INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
titulo
VARCHAR(120) NOT NULL,
descricao TEXT NOT NULL DEFAULT '',
concluida BOOLEAN NOT NULL DEFAULT FALSE,
criada_em TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_tarefas_concluida ON tarefas (concluida);
-- Dados de exemplo (executados só na primeira criação do banco).
INSERT INTO tarefas (titulo, descricao) VALUES
('Instalar o Docker', 'Seguir o guia oficial para Linux.'),
('Subir a aplicação', 'Rodar docker compose up --build.'),
('Estudar o Jinja', 'Ler sobre herança de templates e filtros.');
