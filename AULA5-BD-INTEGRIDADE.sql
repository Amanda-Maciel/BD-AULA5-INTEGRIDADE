--QUESTÃO 1
CREATE TABLE pessoa (
ID int ,
nome VARCHAR(100),
sobrenome VARCHAR(100),
idade INT CHECK (idade>=0) --check se idade é maior que 0
)

--QUESTÃO 2
ALTER TABLE pessoa
ADD CONSTRAINT pessoa_unique UNIQUE (ID, nome, sobrenome); -- garante que essa combinação seja única


--QUESTÃO 3
ALTER TABLE pessoa
ALTER COLUMN idade INT NOT NULL; -- obriga todas as colunas a terem um valor



--QUESTÃO 4
CREATE TABLE endereco (
ID int PRIMARY KEY,
rua VARCHAR(200)
);

ALTER TABLE pessoa
ADD endereco_id INT;

ALTER TABLE pessoa
ADD CONSTRAINT fk_pessoa_endereco
FOREIGN KEY (endereco_id)
REFERENCES endereco(ID);
