SELECT u.usuario AS usuario, COUNT(h.cancao_id) AS qt_de_musicas_ouvidas, ROUND((SUM(duracao_segundos))/60,2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h 
ON u.usuario_id = h.usuario_id 
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = h.cancao_id
GROUP BY u.usuario_id
ORDER BY u.usuario;