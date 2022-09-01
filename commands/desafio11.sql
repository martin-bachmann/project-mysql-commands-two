SELECT nome_musica, novo_nome
	FROM (
		SELECT c.cancao nome_musica,
			CASE
				WHEN c.cancao LIKE '%Amar%' THEN REPLACE(c.cancao, 'Amar', 'Code Review')
				WHEN c.cancao LIKE '%SUPERSTAR' THEN REPLACE(c.cancao, 'SUPERSTAR', 'SUPERDEV')
				WHEN c.cancao LIKE '%Bard%' THEN REPLACE(c.cancao, 'Bard', 'QA')
				WHEN c.cancao LIKE '%SOUL' THEN REPLACE(c.cancao, 'SOUL', 'CODE')
				WHEN c.cancao LIKE '%Pais' THEN REPLACE(c.cancao, 'Pais', 'Pull Requests')
				ELSE ''
			END novo_nome
			FROM SpotifyClone.cancao c
	) nova_tabela
    WHERE novo_nome <> ''
    ORDER BY nome_musica DESC, novo_nome DESC;
