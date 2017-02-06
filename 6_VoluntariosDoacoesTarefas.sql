--
-- Voluntarios, Doacoes & Tarefas
--

-- Registar realizacao de uma tarefa por um voluntario
Insert into VoluntariosTarefas
	( Voluntario , Tarefa , Horas )
    values
    ( 1 , 1 , 8 ),
    ( 1 , 2 , 2 ),
    ( 2 , 3 , 3 ),
    ( 2 , 4 , 5 );
    
-- Registar doacoes para um projecto
-- NOTA : Existe um trigger que verifica (antes de inserir) se existe sufuciente 
--        quantidade por gastar da doacao em causa. Caso isto n se verifique, 
--        a operacao falha.
Insert into DoacoesProjectos
	( Doacao , Projecto , Quantidade )
    values
    ( 1 , 1 , 50 );
    
GRANT ALL PRIVILEGES ON `%`.* TO root@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON `%`.* TO root@'127.0.0.1' IDENTIFIED BY 'admin';

select * from Privileges;