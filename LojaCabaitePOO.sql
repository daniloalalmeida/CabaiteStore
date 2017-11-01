CREATE DATABASE lojaCabaitePOO;
USE lojaCabaitePOO;

CREATE TABLE pessoa
	(id_pessoa integer(6) PRIMARY KEY AUTO_INCREMENT,
     	nome varchar(100) NOT null,
     		endereco varchar(300) NOT null,
     			cpf integer(11) NOT null UNIQUE,
     				telefone integer(11) NOT null,
    					sexo enum('F', 'M') NOT null);
CREATE	TABLE produto
	(id_produto integer(6) PRIMARY KEY AUTO_INCREMENT,
     	descricao varchar(300) NOT null,
     		garantia datetime NOT null,
     			tipo varchar(50) NOT null,
     				preco_produto decimal(6,2) NOT null);			
     
CREATE TABLE itens_pedido
	(itens_pedido integer(6) PRIMARY KEY AUTO_INCREMENT,
     		quantidade decimal(6,2) NOT null UNSIGNED,
	 		CONSTRAINT FK_id_produto FOREIGN KEY (id_produto) 								
				REFERENCES produto (id_produto));
     
CREATE TABLE pedido
     (id_pedido integer(6) PRIMARY KEY,
      	NF integer(6) AUTO_INCREMENT UNIQUE,
      		data_pedido datetime NOT null,
      			id_pessoa integer(6),
      				itens_pedido integer(6),
      				CONSTRAINT FK_id_pessoa FOREIGN KEY (id_pessoa) 								
					REFERENCES pessoa (id_pessoa),
     						CONSTRAINT FK_itens_pedido FOREIGN KEY (itens_pedido) 								
							REFERENCES itens_pedido (itens_pedido));
      							
										
