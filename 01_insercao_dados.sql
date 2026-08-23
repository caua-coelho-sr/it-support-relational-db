insert into Empresas_Master (NomeEmpresa, EmailContato, DataCadastro, StatusContrato, OptIn_Marketing)
values
('Fioro', 'fioro@conse.br', '2026-03-29', 'Ativo', True),
('Patio', 'patio@conse.br', '2026-04-05', 'Ativo', True),
('Jepo', 'jepo@conse.br', '2026-04-15', 'Ativo', True),
('Rivolo', 'rivolo@conse.br', '2026-05-10', 'Ativo', True);

/*Após a inserção de dados usei o comando:
SELECT * FROM Empresas_Master;
Afim de verificar a integridade dos dados inseridos.*/

insert into Chamados_Suporte (AccountKey, DataAbertura, TipoServico, NivelUrgencia)
values
(3, '2026-04-16', 1, 'Baixo'),
(4, '2026-05-17', 6, 'Crítico'),
(2, '2026-06-03', 4, 'Médio'),
(1, '2026-06-12', 3, 'Baixo');

/*Após a inserção de dados usei o comando:
SELECT * FROM Chamados_Suporte;
Afim de verificar a integridade dos dados inseridos.*/

insert into Leads_B2B (NomeLead, EmailLead, TamanhoEmpresa, OrigemCampanha)
values
('Ângelo', 'angelo@fioro.br', 20, 'Meta Ads'),
('Marcos', 'marcos@patio.br', 16, 'Indicação'),
('Maria', 'maria@jepo.br', 10, 'Google Ads'),
('Olavo', 'olavo@rivologroup.br', 7, 'Indicação');

/*Após a inserção de dados usei o comando:
SELECT * FROM Leads_B2B;
Afim de verificar a integridade dos dados inseridos.*/