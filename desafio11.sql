SELECT
  songs.song_name as 'nome_musica',
  CASE
    WHEN RIGHT(songs.song_name, 7) = 'Streets' THEN REPLACE(songs.song_name, 'Streets', 'Code Review')
    WHEN RIGHT(songs.song_name, 7) = 'Her Own' THEN REPLACE(songs.song_name, 'Her Own', 'Trybe')
    WHEN RIGHT(songs.song_name, 10) = 'Inner Fire' THEN REPLACE(songs.song_name, 'Inner Fire', 'Project')
    WHEN RIGHT(songs.song_name, 5) = 'Silly' THEN REPLACE(songs.song_name, 'Silly', 'Nice')
    WHEN RIGHT(songs.song_name, 6) = 'Circus' THEN REPLACE(songs.song_name, 'Circus', 'Pull Request')
  END AS 'novo_nome'
FROM
  SpotifyClone.songs
HAVING
  novo_nome IS NOT NULL
ORDER BY
  nome_musica;
