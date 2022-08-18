SELECT c.cancao, COUNT(h.usuario_id) reproducoes
	FROM SpotifyClone.historico_de_reproducoes h
    INNER JOIN SpotifyClone.cancao c ON h.cancao_id = c.cancao_id
    GROUP BY c.cancao_id
    ORDER BY reproducoes DESC, c.cancao LIMIT 2;