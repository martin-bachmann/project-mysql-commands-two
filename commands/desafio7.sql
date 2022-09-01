SELECT ar.artista, al.album, COUNT(*) seguidores
	FROM SpotifyClone.album al
	INNER JOIN SpotifyClone.artista ar ON al.artista_id = ar.artista_id
    INNER JOIN SpotifyClone.seguindo_artistas s ON ar.artista_id = s.artista_id
    GROUP BY al.album_id
    ORDER BY seguidores DESC, ar.artista, al.album;