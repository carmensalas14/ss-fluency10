createdb animals

CREATE TABLE wild(
  id serial,
  animal_name varchar(50),
  animal_type varchar(50),
  habitat varchar(50),
  prey varchar(50)

);

INSERT INTO wild(
  animal_name,
  animal_type,
  habitat,
  prey
)
VALUES('mountain lion','feline', 'mountains', 'mice'),
('puma','feline', 'jungle', 'zebra'),
('eagle','birds', 'forest','turtle'),
('giraffe','mamal', 'jungle','leaves'),
('shark','fish','ocean', 'dolphin');

CREATE TABLE domestic(
  id serial ,
  type_id int REFERENCES wild(id),
  lifespan int,
  diet varchar(50)
);

INSERT INTO domestic(
  type_id,
  lifespan,
  diet
)
VALUES(1, 20, 'mice' ),
(2,20,'chicken'),
(3,30, 'mice'),
(4,15,'brocolli'),
(5,10,'fish');

ALTER TABLE wild ADD PRIMARY KEY (ID);

ALTER TABLE domestic ADD COLUMN name varchar(50);

INSERT INTO domestic(name)
 VALUES('mountian lion'),
 ('puma'),
('eagle'),
('giraffe'),
('shark');

SELECT name FROM domestic ORDER BY length(name) DESC LIMIT 1; 

SELECT name FROM domestic LIMIT 2 OFFSET 1; 
