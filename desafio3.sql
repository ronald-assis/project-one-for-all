SELECT
  users.user_name AS 'usuario',
  COUNT(DISTINCT(songs.song_id)) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(songs.song_duration) / 60, 2) AS 'total_minutos'
FROM
  SpotifyClone.reproduction_history
  INNER JOIN SpotifyClone.users ON users.user_id = reproduction_history.user_id
  INNER JOIN SpotifyClone.songs ON songs.song_id = reproduction_history.song_id
GROUP BY
  users.user_name;
