CREATE TABLE IF NOT EXISTS Paga(
	codconsulta integer,
	codconv integer,
	porcent integer,
		CONSTRAINT paga_pkey PRIMARY KEY (codconsulta, codconv),
		CONSTRAINT paga_fkey1 FOREIGN KEY (codconsulta)
		REFERENCES Consulta (codconsulta),
		CONSTRAINT paga_fkey2 FOREIGN KEY (codconv)
		REFERENCES Convenio (codconv)
);

CREATE TABLE IF NOT EXISTS Marca(
	codpac integer,
	codconsulta integer,
		CONSTRAINT marca_pkey PRIMARY KEY (codpac, codconsulta),
		CONSTRAINT marca_fkey1 FOREIGN KEY (codpac)
		REFERENCES Paciente (codpac),
		CONSTRAINT marca_fkey2 FOREIGN KEY (codconsulta)
		REFERENCES Consulta (codconsulta)
);

CREATE TABLE IF NOT EXISTS Realizada(
	codmedico integer,
	codconsulta integer,
		CONSTRAINT realizada_pkey PRIMARY KEY (codmedico, codconsulta),
		CONSTRAINT realizada_fkey1 FOREIGN KEY (codmedico)
		REFERENCES Medico (crm),
		CONSTRAINT realizada_fkey2 FOREIGN KEY (codconsulta)
		REFERENCES Consulta (codconsulta)
);

CREATE TABLE IF NOT EXISTS Possui(
	codpaciente integer,
	codconvenio integer,
	tipo varchar(1),
	vencimento date,
		CONSTRAINT possui_pkey PRIMARY KEY (codpaciente, codconvenio),
		CONSTRAINT possui_fkey1 FOREIGN KEY (codpaciente)
		REFERENCES Paciente (codpac),
		CONSTRAINT possui_fkey2 FOREIGN KEY (codconvenio)
		REFERENCES Convenio (codconv)	
);



CREATE TABLE IF NOT EXISTS Atende (
	codmedico integer,
	codconvenio integer,
		CONSTRAINT atende_pkey PRIMARY KEY (codmedico, codconvenio),
		CONSTRAINT atende_fkey1 FOREIGN KEY (codmedico)
		REFERENCES Medico (crm),
		CONSTRAINT atende_fkey2 FOREIGN KEY (codconvenio)
		REFERENCES Convenio (codconv)
);

CREATE TABLE IF NOT EXISTS Paciente (
	codpac integer, 
	nome varchar(40), 
	endereço varchar(100), 
	telefone varchar(8),
		CONSTRAINT paciente_pkey PRIMARY KEY (codpac)
);

CREATE TABLE IF NOT EXISTS Medico (
	crm integer, 
	nome varchar(40), 
	endereço varchar(100), 
	telefone varchar(8),
	especialidade varchar(30),
		CONSTRAINT medico_pkey PRIMARY KEY (crm)
);

CREATE TABLE IF NOT EXISTS Convenio (
	codconv integer, 
	nome varchar(40),
		CONSTRAINT convenio_pkey PRIMARY KEY (codconv)
);

CREATE TABLE IF NOT EXISTS Consulta (
	codconsulta integer,
	data_consulta date,
	horario varchar(5),
		CONSTRAINT consulta_pkey PRIMARY KEY (codconsulta)
);