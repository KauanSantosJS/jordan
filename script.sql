CREATE DATABASE myproject;
USE myproject;

CREATE TABLE Usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(45),
Email VARCHAR(45),
Senha VARCHAR(45)
);

SELECT * FROM Usuario;

CREATE TABLE Quiz(
idQuiz INT PRIMARY KEY,
Tipo VARCHAR(45)
);
INSERT INTO Quiz VALUE
	(1, 'Jordan 1'),
    (2, 'Jordan 4'),
    (3, 'Jordan 11');

CREATE TABLE Respostas(
idResposta INT PRIMARY KEY AUTO_INCREMENT,
Resposta VARCHAR(45)
);

select * from tentativa;

CREATE TABLE Tentativa(
idTentativa INT PRIMARY KEY AUTO_INCREMENT,
Pontuacao INT,
fkUsuario INT,
fkQuiz INT,
CONSTRAINT fkQuiz FOREIGN KEY (fkQuiz) REFERENCES Quiz(idQuiz),
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES Usuario(idUsuario)
);

CREATE TABLE Perguntas(
idPerguntas INT PRIMARY KEY AUTO_INCREMENT,
Pergunta VARCHAR(45),
fkResposta INT,
fkQuiz INT,
CONSTRAINT fkResposta FOREIGN KEY (fkResposta) REFERENCES Respostas(idResposta),
CONSTRAINT fkQuiz_Pergunta FOREIGN KEY (fkQuiz) REFERENCES Quiz(idQuiz)
);