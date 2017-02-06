--
-- S T A F F
--

-- Registar informação sobre funcionario
Insert into FichasPessoais
	( Nome , DataNascimento , CartaoCidadao , Contribuinte , NumSegSocial ,
     Pais , Localidade , Rua , CodigoPostal )
    values 
    ( 'Funcionario' , curdate() , '100000000' , '100000000' , '100000000' ,
	'Pais' , 'Localidade' , 'Rua' , 'Post-Cod' );

-- Designa-lo como funcionario
Insert into Funcionarios
	( Ficha , Salario )
    values
    ( 1 , 1000 );