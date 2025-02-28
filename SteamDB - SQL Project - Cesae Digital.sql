-- ################################################################################################
-- ##								DATABASE (CRIAÇÃO E ELIMINAÇÃO) 

Drop Database if exists SteamDB;

Create database SteamDB;
Use SteamDB;

-- ################################################################################################
-- ##								TABELAS (CRIAÇÃO, ELIMINAÇÃO, ALTERAÇÃO E TRIGGERS) 

-- ##										Tabela Jogos 

-- Eliminar tabela:
Drop table if exists Jogos;

-- Criar tabela:
Create table Jogos(
		   ID_Jogo INT auto_increment PRIMARY KEY,                              
           Nome VARCHAR(255),
           Editora VARCHAR(255),
           Data_Lancamento DATE,
           Idiomas VARCHAR(255),
           ID_Genero INT,
		   ID_Desenvolvedor INT
          );
          
-- Alteração da tabela:
-- Adicionar uma nova coluna (ClassificacaoEtaria) à tabela Jogos:
ALTER TABLE Jogos
ADD COLUMN ClassificacaoEtaria INT;

-- Renomear uma coluna (Nome para NomeJogo) na tabela Jogos:
ALTER TABLE Jogos
CHANGE COLUMN Nome NomeJogo VARCHAR(255);

-- Alterar o tipo de dados de uma coluna (ClassificaoEtaria) na tabela Jogos:
ALTER TABLE Jogos
MODIFY COLUMN ClassificacaoEtaria VARCHAR(10);

-- Trigger:
-- Impedir inserção de jogos sem editora
DELIMITER //
CREATE TRIGGER impede_insercao_jogo_sem_editora BEFORE INSERT ON Jogos FOR EACH ROW 
BEGIN     
    IF NEW.Editora IS NULL THEN         
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'É necessário especificar uma editora para o jogo';    
    END IF; 
END;//
DELIMITER ;

-- ##								Tabela DLCs (downloadable Content) 

-- Eliminar tabela:
Drop table if exists DLCs;

-- Criar tabela:
Create table DLCs(
		   ID_DLC INT auto_increment PRIMARY KEY,                              
           Nome VARCHAR(255),
           Editora VARCHAR(255),
           Data_Lancamento DATE,
           Idiomas VARCHAR(255),
           ID_Jogo INT,
           ID_Genero INT,
		   ID_Desenvolvedor INT
          );  
          
-- Alteração da tabela:
-- Adicionar uma nova coluna (ClassificacaoEtaria) à tabela DLCs:
ALTER TABLE DLCs
ADD COLUMN ClassificacaoEtaria INT;

-- Renomear uma coluna (Nome para NomeDLCs) na tabela DLCs:
ALTER TABLE DLCs
CHANGE COLUMN Nome NomeDLCs VARCHAR(255);

-- Alterar o tipo de dados de uma coluna (ClassificaoEtaria) na tabela DLCs:
ALTER TABLE DLCs
MODIFY COLUMN ClassificacaoEtaria VARCHAR(10);

-- Trigger:
-- Garantir que uma DLC seja inserida apenas se o ID do jogo correspondente existir na tabela Jogos:
DELIMITER //
CREATE TRIGGER impede_insercao_dlc_sem_jogo BEFORE INSERT ON DLCs FOR EACH ROW 
BEGIN     
    IF NOT EXISTS (SELECT 1 FROM Jogos WHERE ID_Jogo = NEW.ID_Jogo) THEN         
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O ID do jogo especificado não existe na tabela Jogos';    
    END IF; 
END;//
DELIMITER ;

-- ##										Tabela Generos

-- Eliminar tabela:
Drop table if exists Generos;

-- Criar tabela:
Create table Generos(
		   ID_Genero INT auto_increment PRIMARY KEY,                              
		   Nome VARCHAR(255)
          );

-- Alteração da tabela:
-- Adicionar uma nova coluna (Descricao) à tabela Generos:
ALTER TABLE Generos
ADD COLUMN Descricao VARCHAR(255);

-- Renomear uma coluna (Nome para NomeGenero) na tabela Generos:
ALTER TABLE Generos
CHANGE COLUMN Nome NomeGenero VARCHAR(255);

-- Alterar o tipo de dados de uma coluna (Descricao) na tabela Generos:
ALTER TABLE Generos
MODIFY COLUMN Descricao TEXT;

-- Trigger:
-- Garantir que um genero seja inserido apenas se não existir outro genero com o mesmo nome
DELIMITER //
CREATE TRIGGER impede_duplicacao_genero BEFORE INSERT ON Generos FOR EACH ROW 
BEGIN     
    IF EXISTS (SELECT 1 FROM Generos WHERE Nome = NEW.Nome) THEN         
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Já existe um gênero com o mesmo nome na tabela Generos';    
    END IF; 
END;//
DELIMITER ;

-- ##									Tabela Desenvolvedor

-- Eliminar tabela:
Drop table if exists Desenvolvedores;

-- Criar tabela:
Create table Desenvolvedores(
		   ID_Desenvolvedor INT auto_increment PRIMARY KEY,                              
		   Nome VARCHAR(255),
           Pais VARCHAR(255)
          );
				
-- Alteração da tabela:
-- Adicionar uma nova coluna (NumeroJogosDesenvolvidos) à tabela Desenvolvedores:
ALTER TABLE Desenvolvedores
ADD COLUMN NumeroJogosDesenvolvidos INT;

-- Renomear uma coluna (Nome para NomeDesenvolvedor) na tabela Desenvolvedores:
ALTER TABLE Generos
CHANGE COLUMN Nome NomeGenero VARCHAR(255);

-- Alterar o tipo de dados de uma coluna (Pais) na tabela Desenvolvedores:
ALTER TABLE Desenvolvedores
MODIFY COLUMN Pais VARCHAR(100);                

-- Trigger:
-- garantir que um desenvolvedor seja inserido apenas se não existir outro desenvolvedor com o mesmo nome e país
DELIMITER //
CREATE TRIGGER impede_duplicacao_desenvolvedor BEFORE INSERT ON Desenvolvedores FOR EACH ROW 
BEGIN     
    IF EXISTS (SELECT 1 FROM Desenvolvedores WHERE Nome = NEW.Nome AND Pais = NEW.Pais) THEN         
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Já existe um desenvolvedor com o mesmo nome e país na tabela Desenvolvedores';    
    END IF; 
END;//
DELIMITER ;


-- ##									Tabela Utilizadores

-- Eliminar tabela:
Drop table if exists Utilizadores;

-- Criar tabela:
Create table Utilizadores(
		   ID_Utilizador INT auto_increment PRIMARY KEY,                              
           Nome_Utilizador VARCHAR(255),
           Data_Registo DATE,
           ID_Jogo INT,
           ID_DLC INT
          );
          
-- Alteração da tabela:
-- Adicionar uma nova coluna (Email) à tabela Utilizadores:
ALTER TABLE Utilizadores
ADD COLUMN Email VARCHAR(255);

-- Renomear uma coluna (Nome_Utilizador para Nome) na tabela Utilizadores:
ALTER TABLE Utilizadores
CHANGE COLUMN Nome_Utilizador Nome VARCHAR(255);

-- Alterar o tipo de dados de uma coluna (Data_Registo) na tabela Utilizadores:
ALTER TABLE Utilizadores
MODIFY COLUMN Data_Registo DATETIME;    

-- Trigger:
-- Garantir que um usuário seja inserido apenas se a data de registro for anterior ou igual à data atual:
DELIMITER //
CREATE TRIGGER impede_data_registo_futura BEFORE INSERT ON Utilizadores FOR EACH ROW 
BEGIN     
    IF NEW.Data_Registo > CURDATE() THEN         
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A data de registro não pode ser no futuro';    
    END IF; 
END;//
DELIMITER ;

-- ##									Tabela Análises

-- Eliminar tabela:
Drop table if exists Analises;

-- Criar tabela:
Create table Analises(
		   ID_Analise INT auto_increment PRIMARY KEY,                              
           Pontuacao DECIMAL(4, 2),
           Data_Analise DATE,
           ID_Jogo INT,
           ID_DLC INT
          );

-- Alteração da tabela:
-- Adicionar uma nova coluna (Descricao) à tabela Analises:
ALTER TABLE Analises
ADD COLUMN Descricao TEXT;

-- Renomear uma coluna (Pontuacao para Avaliacao) na tabela Analises:
ALTER TABLE Analises
CHANGE COLUMN Pontuacao Avaliacao DECIMAL(4, 2);

-- Alterar o tipo de dados de uma coluna (Data_Analise) na tabela Analises:
ALTER TABLE Utilizadores
MODIFY COLUMN Data_Registo DATETIME;   

-- Trigger:
-- Garantir que a pontuação de uma análise esteja dentro de um intervalo específico:
DELIMITER //

CREATE TRIGGER verifica_pontuacao_analise 
BEFORE INSERT ON Analises 
FOR EACH ROW 
BEGIN
    IF NEW.Pontuacao < 0 OR NEW.Pontuacao > 100 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A pontuação da análise deve estar entre 0 e 100';
    END IF;
END;
//
DELIMITER ;

-- ##									Tabela Vendas

-- Eliminar tabela:
Drop table if exists Vendas;

-- Criar tabela:
Create table Vendas(
		   ID_Venda INT auto_increment PRIMARY KEY,                              
           Preco DECIMAL(4, 2),
           Data_Compra DATE,
           ID_Jogo INT,
           ID_DLC INT,
           ID_Utilizador INT
          );

-- Alteração da tabela:
-- Adicionar uma nova coluna (Quantidade) à tabela Vendas:
ALTER TABLE Vendas
ADD COLUMN Quantidade INT;

-- Alterar o tipo de dados de uma coluna (Preco) na tabela Vendas:
ALTER TABLE Vendas
MODIFY COLUMN Preco DECIMAL(6, 2);

-- Adicionar restrição NOT NULL à coluna Data_Compra na tabela Vendas:
ALTER TABLE Vendas
MODIFY COLUMN Data_Compra DATE NOT NULL;

-- Trigger:
-- Garantir que o preço da venda seja um valor positivo:
DELIMITER //

CREATE TRIGGER verifica_preco_venda 
BEFORE INSERT ON Vendas 
FOR EACH ROW 
BEGIN
    IF NEW.Preco <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O preço da venda deve ser um valor positivo';
    END IF;
END;
//
DELIMITER ;

-- ##								Tabela Eventos de Promoções

-- Eliminar tabela:
Drop table if exists EventosPromocoes;

-- Criar tabela:
Create table EventosPromocoes(
		   ID_EventosPromocoes INT auto_increment PRIMARY KEY, 
		   Nome VARCHAR(255),
           Data_Inicio_Evento DATE,
           Data_Fim_Evento DATE,
           Preco_Com_Desconto DECIMAL(4, 2),
		   ID_Jogo INT,
           ID_DLC INT,
           ID_Desenvolvedor INT
          );

-- Alteração da tabela:
-- Adicionar uma nova coluna (Quantidade_Disponivel) à tabela EventosPromocoes:
ALTER TABLE EventosPromocoes
ADD COLUMN Quantidade_Disponivel INT;

-- Renomear uma coluna (Data_Fim_Evento para Data_Fim) na tabela EventosPromocoes:
ALTER TABLE EventosPromocoes
CHANGE COLUMN Data_Fim_Evento Data_Fim DATE;

-- Alterar o tipo de dados de uma coluna (Preco_Com_Desconto) na tabela EventosPromocoes:
ALTER TABLE EventosPromocoes
MODIFY COLUMN Preco_Com_Desconto DECIMAL(6, 2);

-- Trigger:
-- Garantir que a data de início do evento de promoção é anterior à data de término do evento:
DELIMITER //

CREATE TRIGGER verifica_datas_evento 
BEFORE INSERT ON EventosPromocoes 
FOR EACH ROW 
BEGIN
    IF NEW.Data_Inicio_Evento >= NEW.Data_Fim_Evento THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A data de início do evento deve ser anterior à data de término';
    END IF;
END;
//
DELIMITER ;

-- ##								Tabela TransmissaoAoVivo

-- Eliminar tabela:
Drop table if exists TransmissãoAoVivo;

-- Criar tabela:
Create table TransmissaoAoVivo(
		   ID_TransmissaoAoVivo INT auto_increment PRIMARY KEY,                              
           Data_Inicio DATETIME,
           Data_Fim DATETIME,
           ID_Jogo INT,
           ID_DLC INT,
           ID_Utilizador INT
          );
          
-- Alteração da tabela:
-- Adicionar uma nova coluna (Plataforma) à tabela TransmissaoAoVivo:
ALTER TABLE TransmissaoAoVivo
ADD COLUMN Plataforma VARCHAR(50);

-- Renomear uma coluna (Data_Fim) na tabela TransmissaoAoVivo:
ALTER TABLE TransmissaoAoVivo
CHANGE COLUMN Data_Fim Data_Termino DATETIME;

-- Alterar o tipo de dados de uma coluna (Data_Fim) na tabela TransmissaoAoVivo:
ALTER TABLE TransmissaoAoVivo
MODIFY COLUMN Data_Fim TIMESTAMP;

-- Trigger:
-- Garantir que cada transmissão ao vivo tenha um jogo associado:
DELIMITER //

CREATE TRIGGER verifica_jogo_transmissao 
BEFORE INSERT ON TransmissaoAoVivo 
FOR EACH ROW 
BEGIN
    IF NEW.ID_Jogo IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'É necessário especificar um jogo para a transmissão ao vivo';
    END IF;
END;
//
DELIMITER ;

-- ##									Tabela Comentarios

-- Eliminar tabela:
Drop table if exists Comentarios;

-- Criar tabela:
Create table Comentarios(
		   ID_Comentarios INT auto_increment PRIMARY KEY,                              
           Texto_Comentario VARCHAR(255),
           Data_Comentario DATETIME,
		   ID_Jogo INT,
           ID_DLC INT,
           ID_Utilizador INT
          );

-- Alteração da tabela:
-- Adicionar uma nova coluna (Likes) à tabela Comentarios:
ALTER TABLE Comentarios
ADD COLUMN Likes INT DEFAULT 0;

-- Renomear uma coluna (Texto_Comentario para Comentario) na tabela Comentarios:
ALTER TABLE Comentarios
CHANGE COLUMN Texto_Comentario Comentario TEXT;

-- Alterar o tipo de dados de uma coluna (Data_Comentario) na tabela Comentarios:
ALTER TABLE Comentarios
MODIFY COLUMN Data_Comentario TIMESTAMP;

-- Trigger:
-- Garantir que a data de um comentário é inserida corretamente:
DELIMITER //

CREATE TRIGGER verifica_data_comentario 
BEFORE INSERT ON Comentarios 
FOR EACH ROW 
BEGIN
    IF NEW.Data_Comentario > NOW() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A data do comentário não pode ser posterior à data atual';
    END IF;
END;
//
DELIMITER ;

-- ################################################################################################
-- ##								ADICIONAR AS CHAVES ESTRANGEIRAS

ALTER TABLE Jogos
ADD FOREIGN KEY (ID_Genero) REFERENCES Generos(ID_Genero),
ADD FOREIGN KEY (ID_Desenvolvedor) REFERENCES Desenvolvedores(ID_Desenvolvedor);

ALTER TABLE DLCs
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_Genero) REFERENCES Generos(ID_Genero),
ADD FOREIGN KEY (ID_Desenvolvedor) REFERENCES Desenvolvedores(ID_Desenvolvedor);

ALTER TABLE Analises
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_DLC) REFERENCES DLCs(ID_DLC);

ALTER TABLE Utilizadores
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_DLC) REFERENCES DLCs(ID_DLC);

ALTER TABLE Vendas
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_DLC) REFERENCES DLCs(ID_DLC),
ADD FOREIGN KEY (ID_Utilizador) REFERENCES Utilizadores(ID_Utilizador);

ALTER TABLE EventosPromocoes
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_DLC) REFERENCES DLCs(ID_DLC),
ADD FOREIGN KEY (ID_Desenvolvedor) REFERENCES Desenvolvedores(ID_Desenvolvedor);

ALTER TABLE TransmissaoAoVivo
ADD FOREIGN KEY (ID_Utilizador) REFERENCES Utilizadores(ID_Utilizador),
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_DLC) REFERENCES DLCs(ID_DLC);

ALTER TABLE Comentarios
ADD FOREIGN KEY (ID_Utilizador) REFERENCES Utilizadores(ID_Utilizador),
ADD FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo),
ADD FOREIGN KEY (ID_DLC) REFERENCES DLCs(ID_DLC);

-- ################################################################################################
-- ##								REGISTOS (INSERÇÃO, ELIMINAÇÃO E ALTERAÇÃO) 

-- ##										Tabela Generos 

-- Eliminar todos os Registos:
delete from Generos;

-- Eliminar um Registo Especifico (exemplo: eliminar o genero do jogo com o nome RPG)
delete from Generos where Nome = 'RPG';
    
-- Inserção de Registos:
-- (ID_Genero, Nome)
 insert into Generos values
	(0, 'Ação'),
	(0, 'Multijogador'),
    (0, 'RPG'),
    (0, 'Simulação'),
    (0, 'Desporto'),
    (0, 'Indie'),
    (0, 'Aventura'),
    (0, 'Racing'),
    (0, 'Roguelike'),
    (0, 'Drama');
    
-- Alteração de registos:
-- Alterar o genero "Roguelike" para "Estratégia"
UPDATE Generos
SET Nome = 'Estratégia'
WHERE Nome = 'Roguelike';

-- ##										Tabela Desenvolvedores

-- Eliminar todos os Registos:
delete from Desenvolvedores;

-- Eliminar um Registo Especifico (exemplo: eliminar os jogos que são do Reino Unido)
delete from Desenvolvedores where Pais = 'Reino Unido';
    
-- Inserção de Registos:
-- (ID_Desenvolvedor, Nome, Pais)
 insert into Desenvolvedores values
	(0, 'Square Enix', 'Japão'),
    (0, 'PlatinumGames', 'Japão'),
    (0, 'Kojima Productions', 'Japão'),
    (0, 'Ryu Ga Gotoku Studio', 'Japão'),
    (0, 'Konami', 'Japão'),
    (0, 'Capcom Co. Ltd', 'Japão'),
    (0, 'Sports Interactive', 'Reino Unido'),
    (0, 'Bandai Namco Studios Inc.', 'Japão'),
    (0, 'ConcernedApe', 'EUA'),
    (0, 'Larian Studios', 'Bélgica'),
	(0, 'Kunos Simulazioni', 'Itália'),
    (0, 'poncle', 'Reino Unido'),
    (0, 'Telltale Games', 'EUA');

-- Alteração de registos:
-- Alterar o nome do desenvolvedor "Konami" para "Konami Co. Ltd."
UPDATE Desenvolvedores
SET Nome = 'Konami Co. Ltd.'
WHERE Nome = 'Konami';

-- ##										Tabela Jogos 

-- Eliminar todos os Registos:
delete from Jogos;

-- Eliminar um Registo Especifico (exemplo: eliminar o jogo com o nome Bayonetta):
delete from Jogos where Nome = 'Bayonetta';

-- Inserção de Registos
--  (ID_Jogo, Nome, Editora, Data_Lancamento, Idiomas, ID_Genero, ID_Desenvolvedor)
insert into Jogos values
	(0, 'Final Fantasy XIV Online', 'Square Enix', '2014-02-18', 'Inglês, Francês, Alemão, Japonês', 2, 1),
    (0, 'Bayonetta', 'Sega', '2017-04-11', 'Inglês, Francês, Alemão, Espanhol, Japonês', 1, 2),
    (0, 'Death Stranding Directors Cut', '505 Games', '2022-03-30', 'Inglês, Francês, Italiano, Alemão, Espanhol, Arabe, Checo, Holandês, Grego, Hungaro, Polaco, Russo, Chinês, Turco, Português de Portugal, Português do Brasil, Coreano, Japonês', 1, 3),
    (0, 'Like a Dragon: Infinite Wealth', 'Sega', '2024-01-25', 'Inglês, Francês, Italiano, Alemão, Espanhol, Russo, Chinês, Português de Portugal, Português do Brasil, Coreano, Japonês', 3, 4),
    (0, 'Metal Gear Solid V: The Phantom Pain', 'Konami', '2015-09-01', 'Inglês, Francês, Italiano, Alemão, Espanhol, Russo, Português de Portugal, Português do Brasil, Japonês', 1, 5),
    (0, 'Monster Hunter: World', 'Capcom Co. Ltd', '2018-08-09', 'Inglês, Francês, Italiano, Alemão, Espanhol, Arabe, Polaco, Russo, Chinês, Português do Brasil, Coreano, Japonês', 1, 6),
    (0, 'Football Manager 2024', 'Sega', '2023-11-06', 'Inglês, Francês, Italiano, Alemão, Espanhol, Dinamarquês, Holandês, Grego,  Polaco, Russo, Chinês, Turco, Norueguês, Sueco, Português de Portugal, Coreano, Japonês', 4, 7),
	(0, 'Tekken 8', 'Bandai Namco Entertainment', '2024-01-25', 'Inglês, Francês, Italiano, Alemão, Espanhol, Arabe, Polaco, Russo, Chinês, Tailandês, Português do Brasil, Coreano, Japonês', 1, 8),
	(0, 'Stardew Valley', 'ConcernedApe', '2016-02-26', 'Inglês, Francês, Italiano, Alemão, Espanhol, Russo, Chinês, Turco, Hungaro, Português do Brasil, Coreano, Japonês', 6, 9),
    (0, 'Baldurs Gate 3', 'Larian Studios', '2023-08-03', 'Inglês, Francês, Italiano, Alemão, Espanhol, Polaco, Russo, Chinês, Turco, Ucraniano, Português do Brasil, Coreano, Japonês', 3, 10),
	(0, 'Asseto Corsa', 'Kunos Simulazioni', '2014-12-19', 'Inglês, Italiano, Chinês', 8, 11),
    (0, 'Vampire Survivors', 'poncle', '2022-10-20', 'Inglês, Francês, Italiano, Alemão, Espanhol, Polaco, Russo, Chinês, Turco, Português do Brasil, Coreano, Japonês', 3, 12),
	(0, 'The Walking Dead', 'Skybound Games', '2012-04-24', 'Inglês, Francês, Italiano, Alemão, Espanhol', 10, 13);

-- Alteração de registos:
-- Alterar o nome do jogo "Stardew Valley" para "Stardew Valley: Expanded Edition"
UPDATE Jogos
SET Nome = 'Stardew Valley: Expanded Edition'
WHERE Nome = 'Stardew Valley';

-- ##								Tabela DLCs (downloadable Content) 

-- Eliminar todos os Registos:
delete from DLCs;

-- Eliminar um Registo Especifico (exemplo: eliminar o jogo com a editora Konami):
delete from DLCs where Editora = 'Konami';
 
-- Inserção de Registos:
-- (ID_DLC, Nome, Editora, Data_Lancamento, Idiomas, ID_Jogo, ID_Genero, ID_Desenvolvedor)
 insert into DLCs values
	(0, 'Final Fantasy XIV: Endwalker', 'Square Enix', '2021-12-07', 'Inglês, Francês, Alemão, Japonês', 1, 2, 1),
    (0, 'Like a Dragon: Infinite Wealth - Sujimon & Resort Bundle', 'Sega', '2024-01-25', 'Inglês, Francês, Italiano, Alemão, Espanhol, Russo, Chinês, Português do Brasil, Coreano, Japonês', 4, 3, 4),
    (0, 'Metal Gear Solid V: The Phantom Pain - Tuxedo', 'Konami', '2015-10-20', 'Inglês, Francês, Italiano, Alemão, Espanhol, Russo, Português do Brasil, Japonês', 5, 3, 5),
    (0, 'Monster Hunter: World - Gesture: Step Dance', 'Capcom Co. Ltd', '2019-01-25', 'Inglês, Francês, Italiano, Alemão, Espanhol, Arabe, Polaco, Russo, Chinês, Português do Brasil, Coreano, Japonês', 6, 1, 6),
    (0, 'Football Manager 2024 In-game Editor', 'Sega', '2023-11-06', 'Inglês, Francês, Italiano, Alemão, Espanhol, Dinamarquês, Holandês, Grego,  Polaco, Russo, Chinês, Turco, Norueguês, Sueco, Português de Portugal, Coreano, Japonês', 7, 5, 7),
    (0, 'Tekken 8 - Ultimate Pack', 'Bandai Namco Entertainment', '2024-01-25', 'Inglês, Francês, Italiano, Alemão, Espanhol, Arabe, Polaco, Russo, Chinês, Tailandês, Português do Brasil, Coreano, Japonês', 8, 1, 8),
	(0, 'Baldurs Gate 3 - Digital Deluxe Edition DLC', 'Larian Studios', '2023-08-03', 'Inglês, Francês, Italiano, Alemão, Espanhol, Polaco, Russo, Chinês, Turco, Ucraniano, Português do Brasil, Coreano, Japonês', 10, 7, 10),
    (0, 'Asseto Corsa - Japanese Pack', 'Kunos Simulazioni', '2016-10-18', 'Inglês, Italiano', 11, 8, 11),
    (0, 'Vampire Survivors: Legacy of the Moonspell', 'poncle', '2022-12-15', 'Inglês, Francês, Italiano, Alemão, Espanhol, Polaco, Russo, Chinês, Turco, Português do Brasil, Coreano, Japonês', 12, 9, 12),
    (0, 'The Walking Dead: 400 Days', 'Skybound Games', '2013-07-03', 'Inglês, Francês, Italiano, Alemão, Espanhol', 13, 10, 13);

-- Alteração de registos:
-- Atualizar a data de lançamento de uma DLC:
UPDATE DLCs
SET Data_Lancamento = '2022-01-01'
WHERE Nome = 'Final Fantasy XIV: Endwalker';

-- ##										Tabela Analises

-- Eliminar todos os Registos:
delete from Analises;

-- Eliminar um Registo Especifico (exemplo: eliminar os jogos que tiveram pontuação menor que 50)
delete from Analises where Pontuacao < 50;
    
-- Inserção de Registos:
-- (ID_Analise, Pontuacao, Data_Analise, ID_Jogo, ID_DLC)
 insert into Analises values
	(0, 87.05, '2014-03-11', 1, null),
    (0, 79.94, '2022-01-06', 1, 1),
    (0, 90.51, '2017-07-11', 2, null),
    (0, 90.79, '2022-04-05', 3, null),
    (0, 88.61, '2024-01-30', 4, null),
    (0, 43.17, '2024-02-01', 4, 2),
    (0, 89.98, '2015-09-11', 5, null),
    (0, 64.97, '2015-10-21', 5, 3),
    (0, 86.34, '2018-08-13', 6, null),
    (0, 73.26, '2019-01-27', 6, 4),
    (0, 86.90, '2023-11-22', 7, null),
    (0, 23.50, '2023-11-25', 7, 5),
    (0, 85.73, '2024-01-30', 8, null),
    (0, 45.56, '2024-02-02', 8, 6),
    (0, 97.40, '2016-04-12', 9, null),
    (0, 95.91, '2023-08-03', 10, null),
    (0, 92.69, '2023-08-05', 10, 7),
    (0, 91.35, '2014-12-28', 11, null),
    (0, 87.67, '2016-05-22', 11, 8),
    (0, 97.38, '2022-10-25', 12, null),
    (0, 91.07, '2022-12-19', 12, 9),
    (0, 95.03, '2012-04-28', 13, null),
    (0, 73.67, '2013-07-03', 13, 10);

-- Alteração de registos:
-- Atualizar a pontuação de uma análise específica:
UPDATE Analises
SET Pontuacao = 90.00
WHERE ID_Analise = 2;
 
-- ##										Tabela Utilizadores

-- Eliminar todos os Registos:
delete from Utilizadores;

-- Eliminar um Registo Especifico (exemplo: eliminar o utilizador com o nome Darkowl)
delete from Utilizadores where Nome_Utilizador = 'Darkowl';
    
-- Inserção de Registos:
-- (ID_Utilizador, Nome_Utilizador, Data_Registo, ID_Jogo, ID_DLC)
 insert into Utilizadores values
	(0, 'Alanzoka', '2014-04-04', 1, null),
    (0, 'Darkowl', '2021-12-22', 1, 1),
    (0, 'AF40', '2012-06-05', 3, null),
    (0, 'Pewdiepie', '2011-09-30', 2, null),
    (0, 'Sykkuno', '2014-02-23', 8, 6),
    (0, 'Kymen', '2016-05-10', 7, null),
    (0, 'Seals311', '2012-08-15', 7, 5),
    (0, 'Seymour', '2010-12-12', 9, 9),
    (0, 'Caramelo3', '2010-12-12', 8, 6),
    (0, 'MoraisHD', '2013-06-19', 10, 10);
 
-- Alteração de registos:
-- Atualizar o nome do utilizador com ID 2 para "DarkOwlGaming":
UPDATE Utilizadores
SET Nome_Utilizador = 'DarkOwlGaming'
WHERE ID_Utilizador = 2;
 
 - ##										Tabela Vendas

-- Eliminar todos os Registos:
delete from Vendas;

-- Eliminar um Registo Especifico (exemplo: eliminar a venda com o preço de 9.99€)
delete from Vendas where Preco = 9.99;
    
-- Inserção de Registos:
-- (ID_Venda, Preco, Data_Compra, ID_Jogo, ID_DLC, ID_Utilizador)
 insert into Vendas values
	(0, 9.99, '2021-12-14', 1, null, 1),
    (0, 34.99, '2021-12-14', 1, 1, 1),
    (0, 19.99, '2018-02-10', 2, null, 4),
    (0, 19.99, '2024-01-26', 2, 6, 5),
    (0, 59.99, '2023-11-07', 7, null, 7),
    (0, 8.99, '2023-11-07', 7, 5, 7),
    (0, 4.99, '2022-10-18', 9, null, 8),
    (0, 1.99, '2023-09-01', 9, 9, 8),
    (0, 14.99, '2022-06-11', 10, null, 10),
    (0, 4.99, '2023-03-24', 10, 10, 10);

-- Alteração de registos:
-- Atualizar o preço da venda com ID 3 para 24.99:
UPDATE Vendas
SET Preco = 24.99
WHERE ID_Venda = 3;
 
- ##										Tabela EventosPromocoes

-- Eliminar todos os Registos:

delete from EventosPromocoes;

-- Eliminar um Registo Especifico (exemplo: eliminar os registos com o preço com desconto de 19.99€):

delete from EventosPromocoes where Preco_Com_Desconto = 19.99;
    
-- Inserção de Registos:
-- (ID_EventosPromocoes, Nome, Data_Inicio_Evento, Data_Fim_Evento, Preco_Com_Desconto, ID_Jogo, ID_DLC, ID_Desenvolvedor)
insert into EventosPromocoes values
	(0, 'Capcom Publisher Sale', '2024-02-29', '2024-03-14', 9.89, 6, null, 6),
    (0, 'Final Fantasy Franchise Sale', '2024-02-08', '2024-02-12', 13.99, 1, 1, 1),
    (0, 'Final Fantasy Franchise Sale', '2024-02-08', '2024-02-12', 5.99, 1, null, 1),
    (0, 'Bandai Namco Lunar New Year 2024', '2024-02-08', '2024-02-22', 49.99, 8, null, 8),
    (0, 'Bandai Namco Lunar New Year 2024', '2024-02-08', '2024-02-22', 19.99, 8, 6, 8),
    (0, 'Top Release of January', '2024-02-26', '2024-03-01', 49.99, 4, null, 4),
    (0, 'Top Release of January', '2024-02-26', '2024-03-01', 14.99, 4, 2, 4),
    (0, 'Top Release of January', '2024-02-26', '2024-03-01', 19.99, 8, 6, 8),
    (0, 'Konami Spring Sale 2024', '2024-03-14', '2024-03-21', 7.49, 5, null, 5),
    (0, 'Konami Spring Sale 2024', '2024-03-14', '2024-03-21', 0.49, 5, 3, 5);

-- Alteração de registos:
-- Atualizar a data de fim do evento promocional com ID_EventosPromocoes igual a 2:
UPDATE EventosPromocoes
SET Data_Fim_Evento = '2024-02-15'
WHERE ID_EventosPromocoes = 2;

- ##										Tabela TransmissãoAoVivo

-- Eliminar todos os Registos:

delete from TransmissãoAoVivo;

-- Eliminar um Registo Especifico (exemplo: eliminar o registo do utilizador Alanzoka (ID_Utilizador = 1)):

delete from TransmissãoAoVivo where ID_Utilizador = 1;
    
-- Inserção de Registos:
-- (ID_TransmissãoAoVivo, Data_Inicio, Data_Fim, ID_Jogo, ID_DLC, ID_Utilizador)
insert into TransmissaoAoVivo values
	(0, '2021-12-15', '2021-12-16', 1, null, 1),
    (0, '2021-12-18', '2021-12-19', 1, null, 1),
    (0, '2021-12-27', '2021-12-28', 1, 1, 1),
    (0, '2022-01-03', '2022-01-04', 1, 1, 1),
    (0, '2018-02-13', '2018-01-14', 2, null, 4),
    (0, '2018-02-14', '2018-01-15', 2, null, 4),
    (0, '2020-02-13', '2020-01-14', 2, null, 4),
    (0, '2020-02-14', '2020-01-15', 2, null, 4),
    (0, '2022-06-12', '2022-06-13', 10, null, 10),
    (0, '2022-06-15', '2022-06-16', 10, null, 10);

-- Alteração de registos:
-- Atualizar o jogo associado a uma transmissão ao vivo com ID_TransmissaoAoVivo igual a 5:
UPDATE TransmissaoAoVivo
SET ID_Jogo = 8
WHERE ID_TransmissaoAoVivo = 5;

- ##										Tabela Comentarios

-- Eliminar todos os Registos:
delete from Comentarios;

-- Eliminar um Registo Especifico (exemplo: eliminar o comentario da data 2021-12-14):
delete from Comentarios where Data_Comentario = 2024-03-17;
    
-- Inserção de Registos:
-- (ID_Comentarios, Texto_Comentario, Data_Comentario, ID_Jogo, ID_DLC, ID_Utilizador)
insert into Comentarios values
	(0, 'Aesthetic Experience', '2023-03-18', 1, null, 1),
    (0, 'O jogo até que é legal, mas cansa depois de um tempo.', '2024-03-17', 1, null, 2),
    (0, 'I am a silly little kitty meow meow meow', '2022-05-22', 1, 1, 3),
    (0, 'very good game', '2024-02-14', 4, null, 1),
    (0, 'goty', '2024-02-19', 4, 2, 9),
    (0, 'pretty good game', '2024-03-11', 4, 2, 10),
    (0, 'Game of the year, no contest so far', '2023-05-28', 4, 10, 10),
    (0, 'One of the best games these people Produce', '2024-02-03', 9, 9, 2),
    (0, 'Loved it', '2023-11-11', 7, 5, 7),
    (0, 'You gotta play every game before this to enjoy fully', '2024-03-19', 4, 2, 8);

-- Alteração de registos:
-- Atualizar o texto do comentário com ID_Comentarios igual a 1
UPDATE Comentarios
SET Texto_Comentario = 'Excelente experiência estética'
WHERE ID_Comentarios = 1;

-- ################################################################################################
-- ##									CRIAÇÃO DE CONSULTAS

-- ##								Consultas simples usando critérios

-- Consulta de Jogos Lançados Após 2023:
SELECT Nome
FROM Jogos
WHERE Data_Lancamento > '2023-12-31';

-- Consulta de Utilizadores Registados Antes de 2015:
SELECT Nome_Utilizador, Data_Registo
FROM Utilizadores
WHERE Data_Registo < '2015-01-01';

-- Consulta de Comentários Feitos Após dezembro de 2023:
SELECT Texto_Comentario, Data_Comentario
FROM Comentarios
WHERE Data_Comentario > '2023-12-31';

-- Consulta de Jogos com Editoras Diferentes de "Sega":
SELECT Nome
FROM Jogos
WHERE Editora <> 'Sega';

-- Consulta de Jogos com ID de Desenvolvedor 3:
SELECT Nome
FROM Jogos
WHERE ID_Desenvolvedor = 3;

-- ##									Consultas Cruzadas

-- Consulta de Desenvolvedores e Jogos Criados:
SELECT Desenvolvedores.Nome, Jogos.Nome
FROM Desenvolvedores
INNER JOIN Jogos ON Desenvolvedores.ID_Desenvolvedor = Jogos.ID_Desenvolvedor;

-- Consulta de Jogos e DLCs Associadas:
SELECT Jogos.Nome, DLCs.Nome
FROM Jogos
INNER JOIN DLCs ON Jogos.ID_Jogo = DLCs.ID_Jogo;

-- ##							Consultas com Funções (Data, matemática, etc)

-- Consulta de Vendas com o Preço Médio de Venda:
SELECT AVG(Preco) AS Preco_Medio_Venda
FROM Vendas;

-- Consulta com Função de Data:
SELECT ID_Jogo, Nome, YEAR(Data_Lancamento) AS Ano_Lancamento
FROM Jogos;

-- Consulta de vendas com o preço maximo:
SELECT MAX(Preco) AS Preco_Maximo
FROM Vendas;

-- Consulta da analise com a menor pontuação:
SELECT MIN(Pontuacao) AS Pontuacao_Minima
FROM Analises;

-- ##							Consulta com Utilização de pelo menos 8 funções

SELECT 
    COUNT(ID_Venda) AS Total_Vendas,
    SUM(Preco) AS Total_Vendas_Valor,
    AVG(Preco) AS Preco_Medio,
    MAX(Preco) AS Preco_Maximo,
    MIN(Preco) AS Preco_Minimo,
    MAX(Data_Compra) AS Ultima_Compra,
    MIN(Data_Compra) AS Primeira_Compra,
    DAY(Data_Compra) AS Dia_Compra
FROM Vendas;

-- ##				Consulta com Utilização dos operadores and, or, not, like, in, between, etc

SELECT 
    Jogos.Nome AS Nome_Jogo,
    Jogos.Data_Lancamento AS Data_Lancamento_Jogo,
    desenvolvedores.Nome AS Nome_Desenvolvedor,
    desenvolvedores.Pais AS Pais_Desenvolvedor
FROM 
    Jogos 
INNER JOIN 
    Desenvolvedores ON jogos.ID_Desenvolvedor = desenvolvedores.ID_Desenvolvedor
WHERE 
    jogos.ID_Jogo BETWEEN 1 AND 5
    AND desenvolvedores.Pais IN ('Japão', 'EUA', 'Bélgica')
    AND (jogos.Nome LIKE '%Final Fantasy%' OR jogos.Nome LIKE '%Monster Hunter%')
    AND NOT jogos.Data_Lancamento BETWEEN '2019-01-01' AND '2022-01-01';
    
-- ##				Proteção do servidor contra eliminação de dados em massa;

SET SQL_SAFE_UPDATES = 0;
-- Desativa a execução segura de atualizações. Isso significa que operações UPDATE ou DELETE 
-- podem ser executadas sem restrições e sem a necessidade de especificar uma cláusula WHERE 
-- em cada instrução, o que pode ser perigoso se não for usado com cautela, pois pode resultar em atualizações ou exclusões em massa não intencionais.


SET SQL_SAFE_UPDATES = 1;
-- Ativa a execução segura de atualizações. Isso impõe a restrição de que as instruções UPDATE ou DELETE 
-- só podem ser executadas se elas incluírem uma cláusula WHERE que restrinja as linhas afetadas, 
-- prevenindo assim a atualização ou exclusão em massa inadvertida. Essa é a configuração padrão e mais segura.


-- Limitar a exclusão de dados em massa na tabela Vendas
DELETE FROM Vendas
WHERE ID_Venda = (SELECT MAX(ID_Venda) FROM Vendas);

-- Proteger contra exclusão em massa na tabela DLCs
DELETE FROM DLCs
WHERE ID_DLC NOT IN (SELECT ID_DLC FROM Vendas);
