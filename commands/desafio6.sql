SELECT MIN(p.valor_plano) faturamento_minimo, MAX(p.valor_plano) faturamento_maximo, ROUND(AVG(p.valor_plano), 2) faturamento_medio, SUM(p.valor_plano) faturamento_total
	FROM SpotifyClone.usuario u
    INNER JOIN SpotifyClone.plano p ON u.plano_id = p.plano_id;
