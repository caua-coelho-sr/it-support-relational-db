insert into Chamados_Suporte (AccountKey, DataAbertura, TipoServico, NivelUrgencia)
values
(3, '2026-07-14', 2, 'Crítico');

SELECT * FROM Chamados_Suporte;

UPDATE Chamados_Suporte
set NivelUrgencia = 'Baixo'
WHERE TicketID = 5;

DELETE FROM Chamados_Suporte
WHERE TicketID = 5;

/* A situação simula a abertura de um chamado por parte de uma das empresas clientes da consultoria,
Que após a abertura mudou a urgência, e após, optou por cancelar o chamado.*/

