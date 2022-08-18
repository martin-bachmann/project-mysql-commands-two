SELECT ar.artista, al.album
	FROM SpotifyClone.album al
	INNER JOIN SpotifyClone.artista ar ON al.artista_id = ar.artista_id
    WHERE ar.artista = 'Elis Regina'
    ORDER BY al.album;