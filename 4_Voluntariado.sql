--
-- V O L U N T A R I A D O
--

-- Definir paises de intrevencao
Insert into Paises
	( Nome )
    values
    ( 'Portugal' ),
    ( 'Espanha' ),
    ( 'Franca' );

-- Definir Actividades
Insert into Actividades
	( Descricao )
    values
    ( 'Servente' ),
    ( 'Artista' );

-- Criar Equpias
-- NOTA : Equipas têm de ser definidas Antes dos voluntarios.
Insert into Equipas
	( Responsavel , Pais , Designacao )
    values
    ( 1 , 3 , 'Equipa todo-o-terreno' );

-- Registar Voluntario
Insert into `FichasPessoais` 
	( Nome , DataNascimento , CartaoCidadao , Contribuinte , NumSegSocial ,
     Pais , Localidade , Rua , CodigoPostal )
    values 
    ( 'Voluntario1' , curdate() , '400000000' , '400000000' , '400000000' ,
	'Portugal' , 'Localidade' , 'Rua' , 'Post-Cod' ),
    ( 'Voluntario2' , curdate() , '500000000' , '500000000' , '500000000' ,
	'Espanha' , 'Localidade' , 'Rua' , 'Post-Cod' );

-- Designar como voluntario
-- : NOTA : HorasTrabalho é um atributo derivado, com um valor default = 0.
Insert into Voluntarios
	( Actividade , Equipa , Nacionalidade , Ficha , FichaInscricao )
    values
    ( 1 , 1 , 1 , 4 , 'c/documentos/voluntarios/vol1' ),
    ( 2 , 1 , 1 , 5 , 'c/documentos/voluntarios/vol2' );