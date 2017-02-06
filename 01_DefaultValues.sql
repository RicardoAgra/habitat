-- Staff
ALTER TABLE `Habitat`.`Funcionarios` 
change column `Salario` `Salario` float not null default 0;


-- Familias
ALTER TABLE `Habitat`.`Familias`
	change column `RendimentoTotal` `RendimentoTotal` float not null default 0;

ALTER TABLE `Habitat`.`AgregadoFamiliar` 
	change column `Rendimento` `Rendimento` float not null default 0;

Alter table `Habitat`.`Candidaturas` 
	change column `Estado` `Estado` varchar(20) not null default 'Por Considerar';

-- Voluntariado
Alter table `Habitat`.`Voluntarios` 
	change column `HorasTrabalho` `HorasTrabalho` float not null default 0;

-- Stock
Insert into TiposDador 
	( Sigla , Descricao ) 
    values
	( 'anon', 'Anonimo' ),
    ( 'sing', 'Singular' ),
    ( 'empr', 'Empresa' ),
    ( 'parc', 'Parceria' );

Alter table `Habitat`.`TiposDoacao` 
	Change column `Quantidade` `Quantidade` float not null default 0;

Insert into TiposDoacao 
	( Descricao , Unidades ) 
    values 
    ( 'financeiro' , '€' ),
	( 'servico' , 'Horas');

Delimiter //
Create trigger Nova_Doacao
	after Insert 
    on Doacoes
    for each row
Begin
    update Dadores
		set UltimaDoacao = new.Data
	where id = new.Dador;
    
    update TiposDoacao
		set Quantidade = Quantidade+new.Quantidade
    where id = new.Tipo;
end //

Delimiter //
Create trigger Novo_VoluntarioTarefa
	after Insert 
    on VoluntariosTarefas
    for each row
Begin
    update Voluntarios
		set HorasTrabalho = HorasTrabalho + new.Horas
	where id = new.Voluntario;
end //


Delimiter //
Create trigger Nova_DoacaoProjecto
	before Insert 
    on DoacoesProjectos
    for each row
Begin
	Declare qtd,used,remain float;
    select Quantidade from Doacoes where id = new.Doacao into qtd;
    select Gasto from Doacoes where id = new.Doacao into used;
	
    set remain = qtd-used;
    
    IF ( new.Quantidade>remain ) then
        SIGNAL SQLSTATE '45001' set message_text = 'Quantidade em stock insuficiente';
    END IF;
    update Doacoes
		set Gasto = Gasto + new.Quantidade
	where id = new.Doacao;
end //