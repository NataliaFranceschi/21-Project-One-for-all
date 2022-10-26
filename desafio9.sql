SELECT COUNT(u.usuario) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON u.usuario_id = h.usuario_id
WHERE usuario LIKE 'Barbara Liskov'