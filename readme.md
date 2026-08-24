# Core Tech - Help Desk Relational Database

## Objetivo do Projeto
Este projeto consiste na modelagem e implementação de um Banco de Dados Relacional construído do zero para gerenciar a operação de um sistema de Help Desk (Suporte de TI). 

O objetivo central é fornecer uma base de dados estruturada, normalizada e segura para o gerenciamento de clientes B2B, rastreamento de chamados técnicos e padronização do catálogo de serviços, servindo como uma fundação confiável para futuras integrações de software e análises de Business Intelligence (BI).

## O Problema de Negócios Resolvido
* **Rastreabilidade de Atendimentos:** Controle do ciclo de vida dos tickets (Abertura, Urgência, Status e Resolução).
* **Padronização do Catálogo (Integridade):** Utilização de tabelas normalizadas e chaves estrangeiras para garantir que os serviços solicitados obedeçam estritamente ao catálogo oficial, eliminando redundâncias e erros de digitação.
* **Gestão de Clientes B2B:** Centralização dos dados das empresas parceiras para histórico de consumo de suporte.
* **Conformidade Básica de Dados:** Inclusão de campos de permissão (Opt-In) para controle ético e legal de comunicações.

## Tecnologias e Ferramentas Utilizadas
* **SQL (Structured Query Language):** Linguagem padrão para estruturação (DDL) e manipulação (DML) dos dados.
* **MySQL / MariaDB:** Sistema de Gerenciamento de Banco de Dados Relacional (SGBD).
* **phpMyAdmin (via XAMPP):** Interface gráfica para administração do servidor e execução de rotinas.
* **Visual Studio Code:** IDE utilizada para o desenvolvimento e organização modular dos scripts.
* **Git e GitHub:** Versionamento de código e documentação do projeto.

## Estrutura do Banco de Dados (Schema)
O projeto é dividido de forma modular, focado na integridade referencial:

1. **`Empresas_Master`**: Tabela central de clientes, gerenciando os perfis corporativos e consentimento de comunicação.
2. **`Tipos_Servico`**: Tabela de catálogo oficial de serviços de infraestrutura (Ex: Limpeza Preventiva, Configuração de TEF, Cabeamento). Atua como chave primária de validação.
3. **`Chamados_Suporte`**: Tabela transacional que registra os eventos de suporte, cruzando o cliente que solicitou com o serviço prestado por meio de Chaves Estrangeiras (Foreign Keys).

## Conceitos Práticos Aplicados
- **Modelagem Relacional e Normalização:** Aplicação prática da 1ª e 2ª Formas Normais.
- **Integridade Referencial:** Implementação de `PRIMARY KEY` (PK) e `FOREIGN KEY` (FK).
- **Data Definition Language (DDL):** Comandos `CREATE TABLE`, `ALTER TABLE`, `ADD CONSTRAINT`.
- **Data Manipulation Language (DML):** Comandos `INSERT INTO`, `UPDATE`, `SELECT`.
- **Lógica Condicional e Tipagem:** Uso estratégico de tipos de dados (`VARCHAR`, `INT`, `ENUM`, `BOOLEAN`).

---
*Projeto desenvolvido como laboratório prático de arquitetura de dados operacionais e infraestrutura de TI.*