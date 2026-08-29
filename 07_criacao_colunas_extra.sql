ALTER TABLE Chamados_Suporte
Add column DESCRICAO_PROBLEMA text NOT NULL;

ALTER TABLE Chamados_Suporte
ADD COLUMN Anotacao_Resolucao TEXT NULL;

ALTER TABLE Chamados_Suporte
ADD CONSTRAINT chk_anotacao_condicional
CHECK (Anotacao_Resolucao IS NULL OR Status_Chamado = 'Resolvido');

-- testando a condição 'is null or'
UPDATE Chamados_Suporte
set Anotacao_Resolucao = 'Impossivel de resolver'
where TicketID = 3;

--alimentando a coluna 'DESCRICAO_PROBLEMA'
update Chamados_Suporte
set DESCRICAO_PROBLEMA = 'Computador não liga'
WHERE TicketID = 2;

--Alterado nome da coluna DESCRICAO_PROBLEMA para remover o CAPS
ALTER TABLE Chamados_Suporte
RENAME COLUMN DESCRICAO_PROBLEMA to DescricaoProblema;
