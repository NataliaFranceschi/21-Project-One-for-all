SELECT COUNT(DISTINCT c.cancao) AS cancoes, COUNT(DISTINCT a.artista) AS artistas, COUNT(DISTINCT al.album) AS albuns
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.album AS al
ON c.album_id = al.album_id
INNER JOIN SpotifyClone.artista AS a
ON a.artista_id = al.artista_id