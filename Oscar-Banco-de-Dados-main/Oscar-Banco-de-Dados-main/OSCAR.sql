Quantas vezes Natalie Portman foi indicada ao Oscar?
R = Ela foi indicada 3 vezes
SELECT COUNT(*) FROM oscar WHERE name LIKE '%Natalie Portman%';



Quantos Oscars Natalie Portman ganhou?
R = Ela venceu uma vez.
SELECT COUNT(*) FROM oscar WHERE name LIKE '%Natalie Portman%' AND winner LIKE '%True%';



Amy Adams já ganhou algum Oscar?
R = Ela nunca venceu.
SELECT COUNT(*) FROM oscar WHERE name LIKE '%Amy Adams%' AND winner LIKE '%True%';



Alguém já ganhou um Oscar e tem o seu primeiro nome?
R =  Não :(
SELECT COUNT(*) FROM oscar WHERE name LIKE '%Isabella%' AND winner LIKE '%True%';



Toy Story 3 ganhou um Oscar em quais anos?
R = 2011
SELECT name, year_film FROM oscar WHERE film LIKE '%Toy Story 3%' AND winner LIKE '%True%';



Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
R= Melhor ator.
SELECT category, COUNT(category) FROM oscar WHERE category LIKE '%ACTOR' OR category LIKE '%CINEMATOGRAPHY' AND winner LIKE '%True%' GROUP BY category;



O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
R = Janet Gaynor em 1928
SELECT name, MIN(year_ceremony) FROM oscar WHERE category LIKE '%ACTRESS%' AND winner LIKE '%True%';



Na categoria Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
UPDATE oscar SET winner = '1' WHERE winner LIKE '%True%';
UPDATE oscar SET winner = '0' WHERE winner LIKE '%False%';



Em qual edição do Oscar "Crash" ganhou o prêmio?
R = Em 2006.
SELECT year_ceremony FROM oscar WHERE film LIKE '%Crash' AND winner LIKE '%1%';



Que filme merecia ganhar um Oscar e não ganhou?
R= Diario de uma paixão.



Bom... dê um Oscar para esse filme, então.
UPDATE oscar SET winner=1 WHERE film LIKE "%Diario de uma paixão%" and category LIKE "CINEMATOGRAPHY";



O filme Central do Brasil aparece no Oscar?
R = Não.
SELECT * FROM oscar WHERE film LIKE '%Central do Brasil';



Aliás... Qual sua opinião sobre central do Brasil
R= Nunca assisti :(.



Inclua no banco 7 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.

1° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','1999',NULL,NULL,'MELHOR FILME','David Fincher', 'Clube da luta', '0');

2° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','2011',NULL,NULL,'MELHOR FILME','Bill Condon', 'Amanhecer - Parte 1', '0');

3° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','2012',NULL,NULL,'MELHOR FILME','Lee Toland Krieger', 'Celeste and Jesse Forever', '0');

4° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','2016',NULL,NULL,'MELHOR FILME','M. Night Shyamalan', 'Fragmentado', '0');

5° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','2018',NULL,NULL,'MELHOR FILME','Gary Ross', 'Oito Mulheres e um Segredo', '0');

6° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','2019',NULL,NULL,'MELHOR FILME','Mehmet Ada Öztekin', 'Milagre na Cela 7', '0');

7° INSERT INTO oscar(id, year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('','2022',NULL,NULL,'MELHOR FILME','Olivia Newman', 'Um lugar bem longe daqui', '0');



Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.
ALTER TABLE oscar ADD PRÊMIO varchar(225)
UPDATE oscar SET PRÊMIO='INJUSTIÇADOS' WHERE category LIKE '%MELHOR FILME%'.



Qual foi o primeiro ano a ter um prêmio do Oscar?
R: Foi em 1928.
SELECT * FROM oscar WHERE winner;

Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
1 - Melhor Filme = The Lord of the Rings: The Return of the King
2 - Melhor Atriz = Charlize Theron
3 - Melhor diretor = Peter Jackson

SELECT * FROM oscar WHERE year_ceremony LIKE "2000" AND category LIKE "CINEMATOGRAPHY" AND winner LIKE '%1%';
SELECT * FROM oscar WHERE year_ceremony LIKE "2000" AND category LIKE "%ACTRESS%" AND winner LIKE '%1%';
SELECT * FROM oscar WHERE year_ceremony LIKE "2000" AND category LIKE "%DIRECTING%" AND winner LIKE '%1%';


Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
Natalie Portman - Jerusalém
Lana Condor  - Vietnã
Shay Mitchell - Canadá
Maite Perroni - México
Danna Paola - México
Valentina Zenere - Argentina
Priyanka Chopra - India

INSERT INTO oscar (name) VALUES ('Natalie Portman'), ('Lana Condor'), ('Shay Mitchell'), ('Maite Perroni'), ('Danna Paola'), ('Valentina Zenere'), ('Priyanka Chopra');



Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?
- Adriana , mais conhecida como senhora minha mãe,além de me dar a luz é quem moldou e auxiliou a pessoa que me tornei. Eu daria o premio de "Mulher do século", mulher do ano é muito pouco para ela.



[OPCIONAL] - Utilizando o comando 'Alter Table', troque os tipos dos dados da coluna/campo "Winner" para Bit.
ALTER TABLE oscar MODIFY COLUMN winner BINARY.

