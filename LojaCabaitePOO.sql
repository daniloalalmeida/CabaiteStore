CREATE DATABASE lojaCabaitePOO;
USE lojaCabaitePOO;

CREATE TABLE pessoa
	(id_pessoa integer(6) PRIMARY KEY,
     	Nome varchar(100) NOT null,
     		endereco varchar(300) NOT null,
     			cpf integer(11) NOT null,
     				telefone integer(11) NOT null,
    					sexo enum('F', 'M') NOT null);
CREATE	TABLE produto
	(id_produto integer(6) PRIMARY KEY,
     	Descricao varchar(300) NOT null,
     		garantia datetime NOT null,
     			tipo varchar(50) NOT null,
     				quantidade decimal(6,2) NOT null,
     					preco_produto decimal(6,2) NOT null);     
     
CREATE TABLE pedido
     (id_pedido integer(6) PRIMARY KEY,
      	NF integer(6) AUTO_INCREMENT UNIQUE,
      		data_pedido datetime NOT null,
      			id_pessoa integer(6),
      				id_produto integer(6),
      					CONSTRAINT FK_id_pessoa FOREIGN KEY (id_pessoa) 								
							REFERENCES pessoa (id_pessoa),
      							CONSTRAINT FK_id_produto FOREIGN KEY 											
									(id_produto) REFERENCES produto (id_produto));