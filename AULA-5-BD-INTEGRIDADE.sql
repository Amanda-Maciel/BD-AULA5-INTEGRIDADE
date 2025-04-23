-- CRIANDO SCHEMA
CREATE SCHEMA avaliacaocontinua;


-- CRIANDO TABELAS
CREATE TABLE avaliacaocontinua.company (
company_name VARCHAR(100) NOT NULL PRIMARY KEY,
city VARCHAR(100)
);

CREATE TABLE avaliacaocontinua.employee (
person_name VARCHAR(100) NOT NULL PRIMARY KEY,
street VARCHAR(100),
city VARCHAR(100)
);

CREATE TABLE avaliacaocontinua.manages (
person_name VARCHAR(100) NOT NULL PRIMARY KEY,
manager_name VARCHAR(100)
);

CREATE TABLE avaliacaocontinua.works (
person_name VARCHAR(100) NOT NULL,
company_name VARCHAR(100) NOT NULL,
salary numeric,
PRIMARY KEY (person_name)
);


--INTEGRIDADE, FAZENDO COM QUE AS MODIFICAÇÕES REFLITAM EM AMBAS TABELAS
ALTER TABLE avaliacaocontinua.works 
ADD CONSTRAINT fk_works_company
FOREIGN KEY (company_name)
REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;



ALTER TABLE avaliacaocontinua.manages 
ADD CONSTRAINT fk_manages_employee
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;



