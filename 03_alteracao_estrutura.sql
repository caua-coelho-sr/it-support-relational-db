--Adicionada a Coluna "Status_Chamado" na tabela "Chamados_Suporte":

ALTER TABLE Chamados_Suporte
ADD COLUMN StatusChamdo ENUM('Resolvido', 'Pendente', 'Aguardando Aprovação de orçamento') DEFAULT 'Pendente';

--Corrigindo erro de digitação no Script Anterior:

ALTER TABLE Chamados_Suporte
RENAME COLUMN StatusChamdo TO Status_Chamado;

--Atualizados os dados da coluna "Status_Chamado":

UPDATE Chamados_Suporte
SET Status_Chamado = 'Resolvido'
WHERE TicketID IN (1, 2);

UPDATE Chamados_Suporte
Set Status_Chamado = 'Aguardando Aprovação de Orçamento'
Where TicketID IN (3);

--Previsualização para verificar integridade dos dados inseridos anteriormente:

SELECT Status_Chamado FROM Chamados_Suporte;