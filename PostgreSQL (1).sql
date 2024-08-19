CREATE TABLE cliente(
  ID SERIAL PRIMARY key,
  nome VARCHAR(16) not null,
  sobrenome VARCHAR(24) NOT NULL,
  idade INT,
  pais VARCHAR(4)
  );
  
 CREATE TABLE produto (
   ID Serial PRIMARY KEY,
   item VARCHAR(48) not null,
   marca VARCHAR(24) not NULL
   
  );
  
  CREATE TABLE pedido (
    ID Serial PRIMARY KEY,
    fk_id_cliente INT NOT NULL,
    fk_id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
    CONSTRAINT fk_produto FOREIGN key (fk_id_produto) REFERENCES produto (ID)
    );
   
   INSERT INTO Cliente (nome, sobrenome, idade,pais) VALUES
   ('Joao','Alves',48, 'BR'),
   ('Roberto', 'Garcia',36, 'MX'),
   ('Dario', 'Rubens', 39, 'ARG'),
   ('Julia', 'Lopes', 28, 'PE'),
   ('Rebeca', 'Giglio',54, 'IT');
   
   INSERT INTO produto (item,marca) VALUES
   ( 'teclado','Logitech'),
   ('mouse', 'HP'),
   ('monitor', 'LG'),
   ('mouse', 'Logitech');
   
   INSERT INTO pedido (fk_id_produto, fk_id_cliente, quantidade) VALUES
   (1, 4, 200),
   (2, 4, 800),
   (3, 3, 100),
   (1, 1, 400),
   (4, 2, 1200);
   
   SELECT * FROM pedido
   		RIGHT JOIN cliente
        ON fk_id_cliente = cliente.id
        
        SELECT * FROM pedido
   		LEFT JOIN cliente
         ON fk_id_cliente = cliente.id
   
   SELECT * FROM pedido
   		LEFT JOIN produto
         ON fk_id_produto = produto.id
         
   SELECT * FROM pedido
   		RIGHT JOIN cliente
         ON  pedido.fk_id_cliente = cliente.id
         WHERE pedido.id is NULL
         
 
 SELECT pedido.id  AS pedido_id, cliente.id as cliente_id
 FROM pedido
 JOIN cliente
 ON pedido.fk_id_cliente = cliente.id
         
   				 
   
   SELECT nome, sobrenome,cliente.id AS cliente_id, quantidade, item,pedido.id as pedido_id FROM pedido
   	RIGHT JOIN cliente
    ON fk_id_cliente = cliente.id
    LEFT JOIN produto
    on fk_id_produto = produto.id
   		

  