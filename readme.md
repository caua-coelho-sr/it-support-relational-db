# Salesforce Marketing Cloud - Automação B2B (Consultoria de TI)

> Projeto prático de simulação de banco de dados e lógicas de segmentação para o Salesforce Marketing Cloud (SFMC).

## Sobre o Projeto
Este repositório documenta a estruturação de dados e as regras de negócio criadas para a **Core Tech Consultoria**, uma empresa fictícia de suporte técnico corporativo. 

O objetivo deste projeto é demonstrar proficiência nas linguagens e arquiteturas utilizadas no ecossistema Salesforce Marketing Cloud, focando na transformação de dados brutos em jornadas de marketing automatizadas (Journeys) para clientes B2B.

---

## 1. O Modelo de Dados (Data Extensions)
Para simular o ambiente relacional do Contact Builder no SFMC, estruturei o banco de dados em três *Data Extensions* principais:

### `1. Empresas_Master` (Dados do Cliente)
Armazena as informações das empresas que possuem ou já possuíram contratos ativos.
* `AccountKey` (Primary Key) - ID único da empresa.
* `NomeEmpresa` - Razão Social ou Nome Fantasia.
* `EmailContato` - E-mail do decisor (CTO ou Gerente de TI).
* `DataCadastro` - Data de entrada no sistema.
* `StatusContrato` - Ativo, Suspenso ou Cancelado.
* `OptIn_Marketing` - Booleano (Aceita comunicações?).

### `2. Chamados_Suporte` (Histórico de Interações)
Registra os tickets de atendimento e manutenções preventivas realizadas.
* `TicketID` (Primary Key) - ID do chamado.
* `AccountKey` (Foreign Key) - Relacionamento com a empresa.
* `DataAbertura` - Data em que o suporte foi solicitado.
* `TipoServico` - Ex: Formatação, Limpeza Preventiva, Cabeamento Estruturado.
* `NivelUrgencia` - Baixo, Médio, Crítico.

### `3. Leads_B2B` (Prospects em Captação)
Base de potenciais clientes capturados via campanhas de tráfego pago.
* `LeadKey` (Primary Key) - ID único do prospect.
* `NomeLead` - Nome do contato.
* `EmailLead` - E-mail corporativo.
* `TamanhoEmpresa` - Número estimado de computadores (Ex: 10-50, 51-200).
* `OrigemCampanha` - De onde o lead veio (Ex: Google Ads - Área Nobre).

---

## 2. As Campanhas (Queries SQL)
Na pasta `/queries`, você encontrará os scripts SQL desenvolvidos para o **Automation Studio**. Eles são responsáveis por extrair o público correto das tabelas acima para alimentar o *Journey Builder*.

As campanhas desenvolvidas são:
* **[01] Régua de Nutrição de Leads:** Filtra novos leads capturados via anúncios para enviar uma sequência de e-mails sobre a importância da manutenção preventiva.
* **[02] Lembrete de Renovação:** Identifica clientes com contratos próximos do vencimento (30 dias).
* **[03] Cross-Sell de Infraestrutura:** Identifica clientes que solicitaram mais de 3 chamados de "Lentidão de Rede" no último trimestre, para ofertar um projeto de Cabeamento Estruturado.
* **[04] Win-back B2B:** Filtra empresas que cancelaram o contrato há mais de 6 meses para uma campanha de reativação com proposta de consultoria gratuita.

---

## 3. Templates e Personalização (HTML/CSS & AMPscript)
*(Em desenvolvimento)*
Na pasta `/templates`, estarão os códigos-fonte dos e-mails transacionais e promocionais criados no **Content Builder**, contendo:
* Estrutura de tabelas responsivas (HTML/CSS in-line).
* Inserção de blocos dinâmicos utilizando **AMPscript** para personalização de nomes, cargos e detalhes dos serviços prestados.

---

## Tecnologias e Habilidades Demonstradas
* **Linguagens:** SQL (SQL Server), HTML, CSS, JavaScript (Básico), AMPscript.
* **Conceitos de Negócio:** B2B Marketing, LTV, Automação de Funil de Vendas, Segmentação de Dados.
* **Arquitetura SFMC:** Data Extensions, Contact Builder, Automation Studio, Journey Builder, Content Builder.