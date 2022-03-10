SELECT
  songs.song_name AS 'nome',
  COUNT(reproduction_history.user_id) as 'reproducoes'
FROM
  SpotifyClone.songs
  INNER JOIN SpotifyClone.reproduction_history ON reproduction_history.song_id = songs.song_id
  INNER JOIN SpotifyClone.users ON users.user_id = reproduction_history.user_id
WHERE
  users.user_plan = 1
  OR users.user_plan = 4
GROUP BY
  nome
ORDER BY
  reproducoes DESC,
  nome;
