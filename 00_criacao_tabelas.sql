create table Empresas_Master (
    AccountKey int primary key auto_increment COMMENT 'ID único da empresa',
    NomeEmpresa varchar(150) NOT NULL COMMENT 'Razão Social ou Nome Fantasia',
    EmailContato varchar(50) NOT NULL UNIQUE COMMENT 'E-mail do decisor (CTO ou Gerente de TI)',
    DataCadastro date COMMENT 'Data de entrada no sistema',
    StatusContrato enum ('Ativo', 'Suspenso', 'Cancelado') COMMENT 'Status atual do contrato da empresa',
    OptIn_Marketing boolean default FALSE COMMENT 'A empresa aceita receber comunicados de marketing? Padrão = False (Não)'
);
create table Chamados_Suporte(
    TicketID int primary key auto_increment COMMENT 'ID do chamado.',
    AccountKey int COMMENT 'ID da empresa que abriu o chamado.',
    DataAbertura date COMMENT 'Data em que o suporte foi realizado.',
    TipoServico int COMMENT 'Tipo de serviço realizado.',
    NivelUrgencia enum ('Baixo', 'Médio', 'Alto', 'Crítico') COMMENT 'Nível de urgência do serviço realizado.',

    foreign key (AccountKey) references Empresas_Master (AccountKey)
);
create table Leads_B2B(
    LeadKey int primary key COMMENT 'ID único do prospect.',
    NomeLead varchar(50) NOT NULL COMMENT 'Nome do Contato.',
    EmailLead varchar(50) NOT NULL COMMENT 'E-mail corporativo.',
    TamanhoEmpresa int COMMENT 'Número estimado de computadores.',
    OrigemCampanha enum ('Google Ads', 'Meta Ads', 'Indicação')
);

-- A coluna "LeadKey" estava sem o auto_increment inicialmente, então foi utilizado o comando: 
-- ALTER TABLE Leads_B2B MODIFY COLUMN LeadKey INT AUTO_INCREMENT COMMENT 'ID único do prospect';

