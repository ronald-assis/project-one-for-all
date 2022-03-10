SELECT
  songs.song_name AS 'cancao',
  COUNT(*) AS 'reproducoes'
FROM
  SpotifyClone.reproduction_history
  INNER JOIN SpotifyClone.songs ON songs.song_id = reproduction_history.song_id
GROUP BY
  songs.song_name
HAVING
  reproducoes > 1
ORDER BY
  songs.song_name ASC
LIMIT
  2;
