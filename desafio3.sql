SELECT u.nome usuario, COUNT(*) qt_de_musicas_ouvidas, ROUND(SUM(c.duracao_segundos / 60), 2) total_minutos
	FROM SpotifyClone.historico_de_reproducoes h
	INNER JOIN SpotifyClone.usuario u ON h.usuario_id = u.usuario_id
    INNER JOIN SpotifyClone.cancao c ON h.cancao_id = c.cancao_id
    GROUP BY u.nome
    ORDER BY u.nome;