--Alterados os OptInMarketing de algumas empresas como teste.
UPDATE Empresas_Master
SET OptIn_Marketing = 0
WHERE AccountKey = 1;

UPDATE Empresas_Master
SET OptIn_Marketing = 0
WHERE AccountKey = 4;

--Adicionadas novas empresas na tabela Empresas_Master

INSERT INTO Empresas_Master (NomeEmpresa, EmailContato, DataCadastro, StatusContrato, OptIn_Marketing)
VALUES
('Nike', 'nikebrazil@nike.com', '2026-06-13', 'Ativo', '0'),
('Gol', 'gol@bahia.br', '2026-04-17', 'Suspenso', '1'),
('Maraca', 'maraca@brazil.com', '2026-05-22', 'Cancelado', '0'),
('Houses Bahia', 'houses@ba.com', '2026-08-20', 'Ativo', '1'),
('Corinthians Paulista', 'vaicurintia@sccp.com', '2024-09-09', 'Ativo', '1');

--Alimentando tabela chamados para mais testes de análise de dados.

insert into Chamados_Suporte (AccountKey, DataAbertura, TipoServico, NivelUrgencia, DescricaoProblema)
values
(9, '2026-04-16', 1, 'Baixo', 'Computador travando'),
(8, '2026-05-17', 6, 'Crítico', 'Loja sem rede'),
(7, '2026-06-03', 4, 'Baixo', 'Sem acesso ao Windows'),
(6, '2026-06-12', 3, 'Baixo', 'Sem acesso ao Sistema'),
(5, '2026-04-16', 1, 'Médio', 'Internet instável'),
(4, '2026-05-17', 6, 'Alto', 'Impressora falhando'),
(3, '2026-06-03', 4, 'Alto', 'Impressora não funciona'),
(2, '2026-06-12', 3, 'Baixo', 'Reset de senha Windows'),
(1, '2026-04-16', 1, 'Crítico', 'Loja sem internet'),
(9, '2026-05-17', 6, 'Médio','Computador travando'),
(8, '2026-06-03', 4, 'Médio', 'Sem acesso ao sistema'),
(7, '2026-06-12', 3, 'Baixo', 'Computador travando'),
(6, '2026-04-16', 1, 'Baixo', 'Sem acesso ao Windows'),
(5, '2026-05-17', 6, 'Baixo', 'Celular sem internet'),
(4, '2026-06-03', 4, 'Baixo', 'Celular sem internet'),
(3, '2026-06-12', 3, 'Baixo', 'Sem acesso ao Windows');