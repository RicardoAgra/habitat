--
-- F A M I L I A S
--

-- Criar Ficha Pessoal Do Representante
-- NOTA : Esta tablea não está na 1ª forma normal uma vez que a mesma morada
-- 	   	  (Pais , Localidade , Rua , CodigoPostal) existe em mais do que uma
--        ficha pessoal.
Insert into `FichasPessoais` 
	( Nome , DataNascimento , CartaoCidadao , Contribuinte , NumSegSocial ,
     Pais , Localidade , Rua , CodigoPostal )
    values 
    ( 'A_Familia_A' , curdate() , '200000000' , '200000000' , '200000000' ,
	'Pais' , 'Localidade' , 'Rua' , 'Post-Cod' );

-- Criar Familia
-- NOTA : O rendimento total é um atributo derivado. Decidimos actualiza-lo através
-- 		  de uma VIEW.
Insert into Familias ( Representante )
	values 
	( 2 );
    
-- Ligar Representate a familia
Insert Into AgregadoFamiliar
	( Ficha , Familia , Rendimento , Habilitacoes )
    values
    ( 2 , 1 , 100 , '12º Ano' );
    
-- Inserir restantes elementos do agregade familiar
Insert into FichasPessoais
	( Nome , DataNascimento , CartaoCidadao , Contribuinte , NumSegSocial ,
	Pais , Localidade , Rua , CodigoPostal )
    values 
    ( 'B_Familia_A' , curdate() , '300000000' , '300000000' , '300000000' ,
	'Pais' , 'Localidade' , 'Rua' , 'Post-Cod' );
    
-- Estabelecer relacao do elemento com a familia
Insert into AgregadoFamiliar
	( Ficha , Familia , Rendimento , Habilitacoes )
    values
    ( 3 , 1 , 100 , '12º Ano' );

-- Criar ficha de candidatura
-- NOTA : O campo estado, FichaInscricao, DataRegisto e familia são obrigatorios.
--        Os restantes podem ser actualizados depois da inserção.
--        O campo Estado, por default, é 'Por Considerar'.
--      : O arquivo, assim como a FichaInscricao representa um caminho para um ficheiro
-- 		  ou uma pasta onde os documentos estao digitalizados.
--        Pode também ser usado como uma 'tag' para o arquivo físico dos mesmos
--        documentos. 
Insert into Candidaturas
	( Familia , FichaInscricao , DataRegisto )
    values
    ( 1 , 'c/documentos/habitat/candidaturas/cand1.jpeg' , curdate() );

-- Actualizar a candidatura
-- NOTA : Arquivo a null indicaque nao existem documentos ligados a esta candidatura.
--        Funcionario a null indica informacao desconhecida.
Update Candidaturas
	set Funcionario = 1, Arquivo=null,
		Descricao = 'Exemplo de uma descricao sobre uma candidatura'
	where id = 1;

-- Actualizar estado de uma candidatura    
Update Candidaturas
	set Estado = 'Aprovado'
    where id = 1;