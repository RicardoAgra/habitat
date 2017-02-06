--
-- P R O J E C T O S
--

-- Criar novo projecto
Insert into Projectos
	( Candidatura , Inicio )
    values
    ( 1 , curdate() );
    
-- Definir tipos de tarefas
Insert into TiposTarefa
	( Descricao )
	values
    ( 'Alisar Terreno' ),
    ( 'Assentar Tijolo' ),
    ( 'Fazer Cimento' ),
    ( 'Construir Alicerces' ),
    ( 'Instalacao Eletrica' ),
	( 'Saneamento' ),
    ( 'Colocar Vidros e Portas' ),
    ( 'Pintar Paredes' );

-- Adicionar tarefas a projectos
Insert into Tarefas
	( Tipo , Projecto , Inicio )
    values
    ( 1 , 1 , curdate() ),
    ( 2 , 1 , curdate() ),
    ( 3 , 1 , curdate() ),
    ( 4 , 1 , curdate() ),
    ( 5 , 1 , curdate() ),
    ( 6 , 1 , curdate() ),
    ( 7 , 1 , curdate() ),
    ( 8 , 1 , curdate() );