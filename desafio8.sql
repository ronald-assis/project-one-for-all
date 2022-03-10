SELECT
  artists.artist_name as 'artista',
  albums.album_name AS 'album'
FROM
  SpotifyClone.artists
  INNER JOIN SpotifyClone.albums ON albums.album_artist_id = artists.artist_id
WHERE
  artist_name = 'Walter Phoenix'
ORDER BY
  album;
