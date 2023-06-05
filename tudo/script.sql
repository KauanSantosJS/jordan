CREATE DATABASE myproject;
USE myproject;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(100),
senha VARCHAR(30)
);

CREATE TABLE Perguntas(
idPerguntas INT PRIMARY KEY AUTO_INCREMENT,
perguntas VARCHAR(100)
);

CREATE TABLE quiz(
idquiz INT PRIMARY KEY AUTO_INCREMENT,
fkUsuario INT,
fkPerguntas INT,
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) 
	REFERENCES usuario(idusuario),
CONSTRAINT fkperguntas FOREIGN KEY (fkPerguntas) 
	REFERENCES Perguntas(idPerguntas)
);

CREATE TABLE tentativas(
fkUsuario INT,
fkQuiz INT,
pontuacao VARCHAR(45),
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) 
	REFERENCES usuario(idusuario),
CONSTRAINT fkQuiz FOREIGN KEY (fkQuiz) 
	REFERENCES quiz(idquiz)
);

CREATE TABLE pergunta(
idPergunda INT PRIMARY KEY AUTO_INCREMENT,
fkQuiz INT,
CONSTRAINT fkQuiz FOREIGN KEY (fkQuiz) 
	REFERENCES quiz(idquiz)
);