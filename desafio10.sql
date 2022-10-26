SELECT c.cancao AS nome, COUNT(c.cancao) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
WHERE p.plano = 'gratuito' OR p.plano = 'pessoal'
GROUP BY c.cancao
ORDER BY c.cancao


/*SABENDO OS IDs DOS PLANOS PODERIA USAR UMA TABELA A MENOS

SELECT c.cancao AS nome, COUNT(c.cancao) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY c.cancao
ORDER BY c.cancao;*/