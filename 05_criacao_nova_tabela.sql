--Criando nova tabela 'Tecnicos' para controlar atribuição de chamados aos técnicos responsáveis.

create table Tecnicos(
    MatriculaTecnico varchar(6) not null,
    NomeTecnico varchar (100) not null,
    NivelHierarquia enum('Estagiário', 'Júnior', 'Pleno', 'Senior', 'Diretor'),
    ContatoTecnico varchar(11) not null,
    primary key (MatriculaTecnico)
);

--Alterando da tabela 'Chamados_Suporte' para receber a designação de um técnico para cada chamado.
alter table Chamados_Suporte
add column MatriculaTecnico varchar(6);

alter table Chamados_Suporte
add constraint fk_chamado_tecnico
foreign key (MatriculaTecnico) References Tecnicos(MatriculaTecnico);

--Alimentando a tabela 'Técnicos'
insert into Tecnicos (MatriculaTecnico, NomeTecnico, NivelHierarquia, ContatoTecnico)
values
(lpad(floor(Rand() * 999999), 6, '0'), 'Caio Cesar', 'Estagiário', '71988881111'),
(lpad(floor(Rand() * 999999), 6, '0'), 'Matheus Freitas', 'Junior', '71999994444'),
(lpad(floor(Rand() * 999999), 6, '0'), 'Luis Santana', 'Pleno', '71922225555'),
(lpad(floor(Rand() * 999999), 6, '0'), 'Carlos Santana', 'Senior', '71966664444'),
(lpad(floor(Rand() * 999999), 6, '0'), 'Cauã Rodrigo', 'Diretor', '71993368092');

--Atribuindo chamado aos técnicos

update Chamados_Suporte
set MatriculaTecnico = '010323'
where TicketID = 1;

update Chamados_Suporte
set MatriculaTecnico = '224391'
where TicketID = 2;

update Chamados_Suporte
set MatriculaTecnico = '609074'
where TicketID = 3;

update Chamados_Suporte
set MatriculaTecnico = '678349'
where TicketID = 4