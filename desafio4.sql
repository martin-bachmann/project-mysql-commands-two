SELECT u.nome usuario, IF(MAX(h.data_reproducao) > '2021-01-01', 'Usuário ativo', 'Usuário inativo') status_usuario
	FROM SpotifyClone.historico_de_reproducoes h
	INNER JOIN SpotifyClone.usuario u ON h.usuario_id = u.usuario_id
    GROUP BY u.nome
    ORDER BY u.nome;