--
-- V I S T A S
--

-- Visualizar tarefas de um projecto
Drop view if exists Tarefas_Projecto;

Create view Tarefas_Projecto as
	Select Tarefas.id, Projecto, Tipo, Descricao from 
	( Tarefas inner join TiposTarefa
		on Tarefas.Tipo=TiposTarefa.id )
	where Tarefas.Fim is null
    order by Projecto;

drop view if exists Rendimentos;

Create view Rendimentos as
	Select Familia, sum( Rendimento ) RendimentoTotal 
		from AgregadoFamiliar
	group by Familia;