--
-- S T O C K
--

-- Registar tipos de doacao extra nao default.
Insert into TiposDoacao
	( Descricao, Unidades ) 
    values
    ('madeira', 'Kg' ),
    ('pedra' , 'Kg' ),
    ('areia' , 'Kg' ),
	('betao' , 'Kg' );

-- Registar informacao sobre dador singular
Insert into `FichasPessoais` 
	( Nome , DataNascimento , CartaoCidadao , Contribuinte , NumSegSocial ,
     Pais , Localidade , Rua , CodigoPostal )
    values 
    ( 'DadorSing' , curdate() , '600000000' , '600000000' , '600000000' ,
	'Pais' , 'Localidade' , 'Rua' , 'Post-Cod' );

-- Registar Dador
Insert into Dadores
	( Tipo , Ficha , Descricao )
    values
    ( 'sing' , 6 , 'Informacao extra sobre este dador' );

-- Registar informacao sobre dador do tipo empresa
Insert into FichasPessoais
	( Nome , DataNascimento , CartaoCidadao , Contribuinte , NumSegSocial ,
     Pais , Localidade , Rua , CodigoPostal )
    values 
    ( 'DadorEmpr' , null , '700000000' , '700000000' , '700000000' ,
	'Pais' , 'Localidade' , 'Rua' , 'Post-Cod' );
    
-- Registar Dador
Insert into Dadores
	( Tipo , Ficha , Descricao )
    values
    ( 'empr' , 7 , 'Informacao extra sobre a empresa' );
    
-- Registar Doacoes
-- NOTA : Gasto por default é 0.
Insert into Doacoes
	( Tipo , Dador , Funcionario , Quantidade , Data )
    values
    ( 1 , 1 , 1 , 100 , now() );
