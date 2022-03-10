SELECT
  COUNT(song_id) AS 'cancoes',
  COUNT(DISTINCT(artists.artist_id)) AS 'artistas',
  COUNT(DISTINCT(albums.album_id)) AS 'albuns'
FROM
  SpotifyClone.songs
  INNER JOIN SpotifyClone.albums ON albums.album_id = songs.song_album_id
  INNER JOIN SpotifyClone.artists ON artists.artist_id = albums.album_artist_id;
