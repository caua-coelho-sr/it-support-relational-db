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

