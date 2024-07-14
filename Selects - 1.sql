-- Quantas obras pertencem ao gênero comédia
SELECT Produto.nome, COUNT(*) 
FROM Produto
JOIN Genero ON Produto.codigo_genero = Genero.codigo_genero
WHERE Genero.nome = 'Comédia'
GROUP BY Produto.nome;

-- oS 5 Atores e atrizes com mais participações em filmes e séries
SELECT A.nome
FROM Atores A
INNER JOIN Participa_Filme F ON F.codigo_produto = A.codigo_filmes
INNER JOIN Participa_Serie S ON F.codigo_series = A.codigo_series
GROUP BY A.codigo_ator
HAVING COUNT(*) > 2;
