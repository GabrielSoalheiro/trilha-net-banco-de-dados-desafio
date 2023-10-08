--1
SELECT x.Id, x.Nome, x.Ano FROM filmes.filmes x

--2
SELECT x.* FROM filmes.filmes x
ORDER BY x.Ano

--3
SELECT x.* FROM filmes.filmes x
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT x.* FROM filmes.filmes x
WHERE Ano = 1997

--5
SELECT x.* FROM filmes.filmes x
WHERE Ano > 2000

--6
SELECT x.* FROM filmes.filmes x
WHERE Duracao > 100
ORDER BY x.Duracao

--7
SELECT Ano, COUNT(*) as Quantidade, SUM(Duracao) as DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

--8
SELECT x.* FROM filmes.atores x
WHERE Genero = 'M'

--9
SELECT x.* FROM filmes.atores x
WHERE Genero = 'F'
ORDER BY x.PrimeiroNome

--10
select
	f.Nome,
	g.Genero
from
	filmes.filmes f
inner join filmes.filmesgenero fg on
	f.Id = fg.IdFilme
inner join filmes.generos g on
	fg.IdGenero = g.Id

--11	
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

--12
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


