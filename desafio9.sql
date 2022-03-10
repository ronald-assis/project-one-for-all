SELECT
  COUNT(reproduction_history.user_id) AS 'quantidade_musicas_no_historico'
FROM
  SpotifyClone.reproduction_history AS reproduction_history
  INNER JOIN SpotifyClone.users ON users.user_id = reproduction_history.user_id
WHERE
  users.user_name = 'Bill';
