--Simulando um relatório de análise do servidor de Help Desk com o objetivo de verificar chamados em aberto.

SELECT 
    c.TicketID, 
    e.NomeEmpresa, 
    t.NomeTecnico, 
    c.Status_Chamado, 
    c.DescricaoProblema
FROM Chamados_Suporte AS c
INNER JOIN Empresas_Master AS e 
    ON c.AccountKey = e.AccountKey
INNER JOIN Tecnicos AS t 
    ON c.MatriculaTecnico = t.MatriculaTecnico
WHERE c.Status_Chamado != 'Resolvido';

--Simulando relatório de análise do servidor de Help Desk com o objetivo de analisar os cenários críticos em aberto.

SELECT
	c.TicketID,
    c.DataAbertura,
    c.NivelUrgencia,
    c.Status_Chamado,
    t.NomeTecnico
FROM Chamados_Suporte as c
INNER JOIN Tecnicos as t
	on c.MatriculaTecnico = t.MatriculaTecnico
where c.NivelUrgencia = 'Crítico'
	and c.Status_Chamado != 'Resolvido';

--Simulando relatório para consultar e ordenar por quantidade de chamados atribuídos a cada técnico.

SELECT 
    t.NomeTecnico, 
    COUNT(c.TicketID) AS Total_Atendimentos
FROM Tecnicos AS t
LEFT JOIN Chamados_Suporte AS c 
    ON t.MatriculaTecnico = c.MatriculaTecnico
GROUP BY t.NomeTecnico
ORDER BY Total_Atendimentos DESC;

--Simulando relatório de consulta de volume de solicitações das empresas contratantes.

SELECT
	e.NomeEmpresa,
    COUNT(c.TicketID) as Volume_Solicitacoes
FROM Empresas_Master AS e
INNER JOIN Chamados_Suporte as c
	on e.AccountKey = c.AccountKey
GROUP BY e.NomeEmpresa
ORDER BY Volume_Solicitacoes DESC;

--Simulando relatório de reincidência de ocorrencias específicas de clientes.

SELECT
	e.NomeEmpresa,
	COUNT(c.TicketID) as Reincidencia_Ocorrencias
FROM Chamados_Suporte as c
INNER JOIN Empresas_Master as e
	on c.AccountKey = e.AccountKey
WHERE DescricaoProblema LIKE '%internet%'
or DescricaoProblema like '%rede%'
GROUP BY e.NomeEmpresa
ORDER BY Reincidencia_Ocorrencias;

--Simulando relatório de quais clientes possuem 2 ou mais chamados registrados.

SELECT
	e.NomeEmpresa,
    COUNT(c.TicketID) as Volume_SOlicitacoes
FROM Empresas_Master AS e
INNER JOIN Chamados_Suporte AS c ON e.AccountKey = c.AccountKey
GROUP BY e.NomeEmpresa
HAVING Volume_Solicitacoes >= 2;

--Simulado relatório de chamados abertos a mais de 2 dias.

SELECT 
    TicketID, 
    Status_Chamado, 
    DataAbertura
FROM Chamados_Suporte
WHERE Status_Chamado != 'Resolvido' 
  AND DATEDIFF(NOW(), DataAbertura) > 2;