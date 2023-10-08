SELECT x.Id, x.Nome, x.Ano FROM filmes.filmes x

SELECT x.* FROM filmes.filmes x
ORDER BY x.Ano

SELECT x.* FROM filmes.filmes x
WHERE Nome = 'De Volta para o Futuro'

SELECT x.* FROM filmes.filmes x
WHERE Ano = 1997

SELECT x.* FROM filmes.filmes x
WHERE Ano > 2000

SELECT x.* FROM filmes.filmes x
WHERE Duracao > 100
ORDER BY x.Duracao

SELECT Ano, COUNT(*) as Quantidade, SUM(Duracao) as DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

SELECT x.* FROM filmes.atores x
WHERE Genero = 'M'

SELECT x.* FROM filmes.atores x
WHERE Genero = 'F'
ORDER BY x.PrimeiroNome

select
	f.Nome,
	g.Genero
from
	filmes.filmes f
inner join filmes.filmesgenero fg on
	f.Id = fg.IdFilme
inner join filmes.generos g on
	fg.IdGenero = g.Id
	
select
	f.Nome,
	g.Genero
from
	filmes.filmes f
inner join filmes.filmesgenero fg on
	f.Id = fg.IdFilme
inner join filmes.generos g on
	fg.IdGenero = g.Id
where g.Genero ='Mistério'

select
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
from
	filmes.filmes f
inner join filmes.elencofilme ef on
	ef.IdFilme = f.Id
inner join filmes.atores a on
	ef.IdAtor = a.Id


