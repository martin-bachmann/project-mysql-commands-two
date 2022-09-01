SELECT COUNT(*) quantidade_musicas_no_historico
	FROM SpotifyClone.usuario u
	INNER JOIN SpotifyClone.historico_de_reproducoes h ON u.usuario_id = h.usuario_id
    WHERE u.nome = 'Barbara Liskov';