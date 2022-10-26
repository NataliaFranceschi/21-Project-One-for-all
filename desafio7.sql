SELECT a.artista , al.album , COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s
ON a.artista_id = s.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, a.artista, al.album;