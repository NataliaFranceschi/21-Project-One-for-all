SELECT c.cancao, count(h.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = h.cancao_id
GROUP BY h.cancao_id
ORDER BY reproducoes DESC, c.cancao 
LIMIT 2;