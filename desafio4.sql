SELECT u.usuario, IF (MAX(YEAR(h.data_reproducao)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id 
group by u.usuario_id
order by u.usuario;