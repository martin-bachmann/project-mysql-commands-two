SELECT c.cancao nome, COUNT(h.usuario_id) reproducoes
	FROM SpotifyClone.cancao c
	INNER JOIN SpotifyClone.historico_de_reproducoes h ON c.cancao_id = h.cancao_id
    INNER JOIN SpotifyClone.usuario u ON h.usuario_id = u.usuario_id
    INNER JOIN SpotifyClone.plano p ON u.plano_id = p.plano_id
    WHERE p.plano = 'gratuito' OR p.plano = 'pessoal'
    GROUP BY c.cancao_id
    ORDER BY c.cancao;