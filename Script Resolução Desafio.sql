-- 1 --

SELECT Nome, Ano FROM Filmes

-- 2 --

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

-- 3 --

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4 --

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5 --

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6 --

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7 --

SELECT Ano, COUNT(*) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8 --

SELECT * FROM Atores WHERE Genero = 'M'

-- 9 --

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 --

SELECT f.Nome, ge.Genero FROM Filmes as f
INNER JOIN FilmesGenero as fe ON f.Id = fe.IdFilme
INNER JOIN Generos as ge ON fe.IdGenero = ge.Id


-- 11 --

SELECT f.Nome, ge.Genero FROM Filmes as f
INNER JOIN FilmesGenero as fe ON f.Id = fe.IdFilme
INNER JOIN Generos as ge ON fe.IdGenero = ge.Id
WHERE ge.Genero = 'Mistério'

-- 12 --

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes as f
INNER JOIN ElencoFilme as ef ON f.Id = ef.IdFilme
INNER JOIN Atores as a ON ef.IdAtor = a.Id