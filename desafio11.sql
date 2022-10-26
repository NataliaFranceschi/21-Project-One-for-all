SELECT cancao AS nome_musica,
CASE cancao
	WHEN 'The Bard’s Song' THEN REPLACE(cancao, 'Bard', 'QA')
    WHEN 'O Medo de Amar é o Medo de Ser Livre' THEN REPLACE(cancao, 'Amar', 'Code Review')
    WHEN 'Como Nossos Pais' THEN REPLACE(cancao, 'Pais', 'Pull Requests')
    WHEN 'BREAK MY SOUL' THEN REPLACE(cancao, 'SOUL', 'CODE')
	WHEN 'ALIEN SUPERSTAR' THEN REPLACE(cancao, 'SUPERSTAR', 'SUPERDEV')
    ELSE null
    END AS novo_nome
FROM SpotifyClone.cancao
having novo_nome <> 'null'
ORDER BY nome_musica DESC