DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  USE SpotifyClone;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      plano VARCHAR(15) NOT NULL,
      valor_plano DECIMAL(5,2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      plano_id INT NOT NULL,
      nome VARCHAR(45) NOT NULL,
      idade INT,
      data_assinatura DATE NOT NULL,
      FOREIGN KEY(plano_id) REFERENCES plano(plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artista(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      artista VARCHAR(45) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      artista_id INT NOT NULL,
      album VARCHAR(45) NOT NULL,
      ano_lancamento YEAR NOT NULL,
      FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancao(
      cancao_id INT PRIMARY KEY AUTO_INCREMENT,
      album_id INT NOT NULL,
      cancao VARCHAR(45) NOT NULL,
      duracao_segundos INT NOT NULL,
      FOREIGN KEY(album_id) REFERENCES album(album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico_de_reproducoes(
      usuario_id INT NOT NULL,
      cancao_id INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
      FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id) ,
      FOREIGN KEY(cancao_id) REFERENCES cancao(cancao_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguindo_artistas(
      usuario_id INT NOT NULL,
      artista_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
      FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
      FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plano (plano, valor_plano)
  VALUES
    ('familiar', 7.99),
    ('gratuito', 0),
    ('pessoal', 6.99),
    ('universitário', 5.99);

  INSERT INTO SpotifyClone.usuario (plano_id, nome, idade, data_assinatura)
  VALUES
    (2, 'Barbara Liskov', 82, '2019-10-20'),
    (2, 'Robert Cecil Martin', 58, '2017-01-06'),
    (1, 'Ada Lovelace', 37, '2017-12-30'),
    (1, 'Martin Fowler', 46, '2017-01-17'),
    (1, 'Sandi Metz', 58, '2018-04-29'),
    (4, 'Paulo Freire', 19, '2018-02-14'),
    (4, 'Bell Hooks', 26, '2018-01-05'),
    (3, 'Christopher Alexander', 85, '2019-06-05'),
    (3, 'Judith Butler', 45, '2020-05-13'),
    (3, 'Jorge Amado', 58, '2017-02-17');

  INSERT INTO SpotifyClone.artista (artista)
  VALUES
    ('Baco Exu do Blues'),
    ('Beyoncé'),
    ('Blind Guardian'),
    ('Elis Regina'),
    ('Nina Simone'),
    ('Queen');

  INSERT INTO SpotifyClone.album (artista_id, album, ano_lancamento)
  VALUES
    (1, 'QVVJFA?', '2003'),
    (2, 'Renaissance', '2022'),
    (3, 'Somewhere Far Beyond', '2007'),
    (4, 'Falso Brilhante', '1998'),
    (4, 'Vento de Maio', '2001'),
    (5, 'I Put A Spell On You', '2012'),
    (6, 'Jazz', '1978'),
    (6, 'Hot Space', '1982');

  INSERT INTO SpotifyClone.cancao (album_id, cancao, duracao_segundos)
  VALUES
    (1, 'Samba em Paris', 267),
    (2, 'BREAK MY SOUL', 279),
    (2, 'VIRGO’S GROOVE', 369),
    (2, 'ALIEN SUPERSTAR', 116),
    (3, 'The Bard’s Song', 244),
    (4, 'Como Nossos Pais', 105),
    (5, 'O Medo de Amar é o Medo de Ser Livre', 207),
    (6, 'Feeling Good', 100),
    (7, 'Under Pressure', 152),
    (8, 'Don’t Stop Me Now', 203);

  INSERT INTO SpotifyClone.historico_de_reproducoes (usuario_id, cancao_id, data_reproducao)
  VALUES
    (1, 1, '2022-02-28 10:45:55'),
    (1, 3, '2020-05-02 05:30:35'),
    (1, 8, '2020-03-06 11:22:33'),
    (2, 8, '2022-08-05 08:05:17'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 8, '2020-11-13 16:55:13'),
    (3, 3, '2020-12-05 18:38:30'),
    (4, 1, '2021-08-15 17:10:10'),
    (5, 1, '2022-01-09 01:44:33'),
    (5, 7, '2020-08-06 15:23:43'),
    (6, 7, '2017-01-24 00:31:17'),
    (6, 2, '2017-10-12 12:35:20'),
    (7, 10, '2011-12-15 22:30:49'),
    (8, 10, '2012-03-17 14:56:41'),
    (9, 5, '2022-02-24 21:14:22'),
    (10, 4, '2015-12-13 08:30:22');
    
  INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artista_id)
  VALUES
    (1, 2),
    (1, 6),
    (1, 4),
    (2, 2),
    (2, 4),
    (3, 6),
    (4, 1),
    (5, 3),
    (5, 5),
    (6, 5),
    (6, 2),
    (7, 5),
    (9, 4),
    (10, 6);
