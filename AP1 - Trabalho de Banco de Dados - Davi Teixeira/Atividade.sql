/*Execute os comandos abaixo:*/

/*1. Atualize o endereço do paciente João para ‘Rua do Bonde’;*/

UPDATE Paciente SET endereço='Rua do Bonde' WHERE codpac=01;

/*2. Atualize os dados do medico Elias para ‘Rua Z’ e  telefone ‘9838-7867’;*/

UPDATE Medico SET endereço='Rua Z' WHERE crm=18739;
UPDATE Medico SET telefone='98387867' WHERE crm=18739;

/*3. Atualize todos os tipos dos convênios que os pacientes possuem para ‘S’;*/

UPDATE Possui SET tipo='S';

/*4. Exclua a informação que o paciente José tem o convenio 232;*/

DELETE FROM Possui Where codpaciente=2 AND codconvenio=232;

/*5. Exclua a consulta realizada do dia 14/05/2013 as 14:00;*/

DELETE FROM Realizada Where codconsulta=6;
SELECT * FROM Realizada;

DELETE FROM Marca Where codconsulta=6;
SELECT * FROM Marca;

DELETE FROM Paga Where codconsulta=6;
SELECT * FROM Paga;

DELETE FROM Consulta Where codconsulta=6;
SELECT * FROM Consulta;

/*6. Altere o nome da coluna especialidade, da tabela médico, para especialização;*/

ALTER TABLE Medico RENAME especialidade TO especialização;

/*7. Altere o tipo de dado da coluna nome, da tabela convenio, para varchar(200);*/

ALTER TABLE Convenio ALTER COLUMN nome TYPE varchar(200);

/*8. Acrescente a coluna Valor na tabela consulta e atualize todas as consultas para o valor de R$100,00.*/

ALTER TABLE Consulta ADD COLUMN Valor integer;
UPDATE Consulta SET valor=100;