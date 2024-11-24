CREATE DATABASE party;
USE party;
CREATE TABLE participants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);


ALTER TABLE participants ADD COLUMN age INT;

INSERT INTO participants (name, age) VALUES 
('Адольф Ґаґа', 20),
('Захачик', 50),
('Ииии', 23),
('Рожевий водопад', 19),
('Душканчик', 19);

SELECT * FROM participants;

CREATE PROCEDURE get_even_age_participants()
SELECT * FROM participants WHERE age % 2 = 0;

CALL get_even_age_participants();