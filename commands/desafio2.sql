SELECT COUNT(DISTINCT c.cancao_id) cancoes, COUNT(DISTINCT al.artista_id) artistas, COUNT(DISTINCT al.album_id) albuns
	FROM SpotifyClone.cancao c
    LEFT JOIN SpotifyClone.album al ON c.album_id = al.album_id;