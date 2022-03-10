SELECT
  artists.artist_name AS 'artista',
  albums.album_name AS 'album',
  COUNT(followers.artist_id) as 'seguidores'
FROM
  SpotifyClone.artists
  INNER JOIN SpotifyClone.albums ON albums.album_artist_id = artists.artist_id
  INNER JOIN SpotifyClone.followers ON followers.artist_id = artists.artist_id
GROUP BY
  albums.album_name,
  artists.artist_name
HAVING
  COUNT(followers.artist_id) > 1
ORDER BY
  seguidores DESC,
  artista,
  album;
