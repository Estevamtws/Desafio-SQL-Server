-- 1

SELECT Nome, Ano FROM Filmes

-- 2

SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC

-- 3

SELECT Nome, Ano, Duracao From Filmes
WHERE Nome = 'De Volta Para O Futuro'

-- 4

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7

SELECT 
    Ano AS Ano,
    COUNT(*) AS Quantidade
FROM filmes
GROUP BY Ano
ORDER BY MAX(duracao) DESC

-- 8 

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- 9

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10

SELECT 
    f.Nome AS Nome,
    g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg
    ON f.Id = fg.IdFilme
INNER JOIN Generos g
    ON g.Id = fg.IdGenero

    -- 11

    SELECT 
    Filmes.Nome,
    Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero
    ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
    ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- 12

SELECT 
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme
    ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
    ON Atores.Id = ElencoFilme.IdAtor




