-- Quantas obras pertencem ao gênero comédia
SELECT Produto.nome, COUNT(*) 
FROM Produto
JOIN Genero ON Produto.codigo_genero = Genero.codigo_genero
WHERE Genero.nome = 'Comédia'
GROUP BY Produto.nome;

-- Atores e atrizes com ao menos 2 participações em filmes e séries
SELECT Atores.nome
FROM Atores, Participa_Serie
WHERE Participa_Serie.codigo_ator = Atores.codigo_ator
GROUP BY Atores.codigo_ator
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

-- Atrizes e atores que participaram de filmes com avaliação maior que 4
SELECT A.nome
FROM atores A, Produto P, participa_filme PF
WHERE A.codigo_ator = PF.codigo_ator
AND  PF.codigo_produto = P.codigo_produto
AND P.avaliação > 4.00;

-- Quantas obras pertencem a cada gênero; 
SELECT Genero.nome, COUNT(*) 
FROM Genero
JOIN Produto ON Produto.codigo_genero = Genero.codigo_genero
GROUP BY Genero.nome;

-- TOP 5 produtos mais bem avaliados
SELECT Produto.nome, Produto.avaliação
FROM Produto
ORDER BY Produto.avaliação DESC
LIMIT 5;

-- Quantos produtos não são norte-americanos
SELECT Produto.nome
FROM Produto
INNER JOIN Pais ON Pais.codigo_pais = Produto.codigo_pais
WHERE Pais.nome_pais <> "Estados Unidos";

-- Quais diretores têm mais séries produzidas; 
SELECT D.nome, COUNT(*)
FROM Diretor D, Series S
WHERE D.codigo_diretor = S.codigo_diretor
ORDER BY D.codigo_diretor DESC
