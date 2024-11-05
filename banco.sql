-- Criar o banco de dados
CREATE DATABASE LongaVida;

-- Seleciona o banco de dados
USE LongaVida;


-- Criação da tabela plano
CREATE TABLE plano (
    numero CHAR(2) PRIMARY KEY,          -- Número do plano (chave primária)
    descricao CHAR(30) NOT NULL,         -- Descrição do plano
    valor DECIMAL(10, 2) NOT NULL        -- Valor da mensalidade
);

-- Inserir os 9 planos na tabela plano
INSERT INTO plano (numero, descricao, valor) VALUES
('01', 'BASIC0', 199.99),  -- Plano Básico 0
('02', 'BASIC1', 229.99),  -- Plano Básico 1
('03', 'BASIC2', 259.99),  -- Plano Básico 2
('04', 'EXEC0', 359.99),   -- Plano Executivo 0
('05', 'EXEC1', 389.99),   -- Plano Executivo 1
('06', 'EXEC2', 419.99),   -- Plano Executivo 2
('07', 'MASTER0', 599.99), -- Plano Máster 0
('08', 'MASTER1', 629.99), -- Plano Máster 1
('09', 'MASTER2', 659.99); -- Plano Máster 2

-- Criação da tabela associado
CREATE TABLE associado (
    plano CHAR(2) NOT NULL,               -- Número do plano (referência para a tabela plano)
    nome CHAR(40) PRIMARY KEY,            -- Nome do associado (chave primária)
    endereco CHAR(35) NOT NULL,           -- Endereço do associado
    cidade CHAR(20) NOT NULL,             -- Cidade do associado
    estado CHAR(2) NOT NULL,              -- Sigla do estado
    cep CHAR(9) NOT NULL,                 -- CEP do associado
    FOREIGN KEY (plano) REFERENCES plano(numero) -- Chave estrangeira para o plano
);




                                                                                                                                