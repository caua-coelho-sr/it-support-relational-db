--Criação da tabela Tipos_Servico para facilitar a identificação do serviço prestado em Chamados_Suporte.

create table Tipos_Servico (
    ServicoID int auto_increment,
    NomeServico varchar (50) not null,
    DescricaoServico varchar (255) not null,
    PRIMARY KEY (ServicoID)
);

--Alimentação da tabela Tipos_Servico para identificar corretamente os serviços.

insert into Tipos_Servico (NomeServico, DescricaoServico)
values
('Limpeza Preventiva.', 'Limpeza Preventiva de Hardware.'),
('Organização de cabos.', 'Organização dos cabos da mesa do usuário.'),
('Configuração de impressora.', 'Configuração de impressora do Servidor.'),
('Criação de usuário no servidor.', 'Criação de usuário Windows no servidor da empresa.'),
('Configuração Pasta de Rede.', 'Conceder Acesso ao usuário à pasta de rede do servidor.'),
('Configuração de TEF.', 'Configuração do Sistema de pagamentos TEF.');

--Alterada a tabela Chamados_Suporte para que o ServiceID seja seguido pelos tipos de serviço prestado.

alter table Chamados_Suporte
add constraint fk_chamados_servico
foreign key (TipoServico) references Tipos_Servico(ServicoID);