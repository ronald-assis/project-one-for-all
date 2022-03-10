SELECT
  users.user_name AS 'usuario',
  IF (
    YEAR(MAX(reproduction_history.date_reproduction)) = 2021,
    'Usuário ativo',
    'Usuário inativo'
  ) AS 'condicao_usuario'
FROM
  SpotifyClone.users
  INNER JOIN SpotifyClone.reproduction_history ON reproduction_history.user_id = users.user_id
GROUP BY
  users.user_name
ORDER BY
  users.user_name;
