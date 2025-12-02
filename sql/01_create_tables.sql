sql/01_create_tables.sql

CREATE TABLE Aluno (
    CPF_Aluno VARCHAR(11) PRIMARY KEY,
    Nome_Completo VARCHAR(150),
    Data_Nascimento DATE,
    Filiacao1 VARCHAR(150),
    Filiacao2 VARCHAR(150),
    Sexo VARCHAR(20),
    Cor_Raca VARCHAR(50),
    Povo_Indigena VARCHAR(5),
    Nacionalidade VARCHAR(50),
    Pais_Nacionalidade VARCHAR(50),
    Municipio_Nascimento VARCHAR(100),
    Certidao_Nova VARCHAR(30),
    Pais_Residencia VARCHAR(50),
    CEP VARCHAR(15),
    Municipio_Residencia VARCHAR(100),
    Zona_Residencia VARCHAR(30)
);

CREATE TABLE Responsavel (
    CPF_Responsavel VARCHAR(11) PRIMARY KEY,
    CPF_Aluno VARCHAR(11),
    Nome_Completo VARCHAR(150),
    Data_Nascimento DATE,
    Filiacao1 VARCHAR(150),
    Filiacao2 VARCHAR(150),
    Sexo VARCHAR(20),
    Cor_Raca VARCHAR(50),
    Povo_Indigena VARCHAR(5),
    Nacionalidade VARCHAR(50),
    Pais_Nacionalidade VARCHAR(50),
    Municipio_Nascimento VARCHAR(100),
    Certidao_Nova VARCHAR(30),
    Pais_Residencia VARCHAR(50),
    CEP VARCHAR(15),
    Municipio_Residencia VARCHAR(100),
    Zona_Residencia VARCHAR(30),
    FOREIGN KEY (CPF_Aluno) REFERENCES Aluno(CPF_Aluno)
);

CREATE TABLE Docente (
    CPF_Docente VARCHAR(11) PRIMARY KEY,
    Nome_Completo VARCHAR(150),
    Data_Nascimento DATE,
    Filiacao1 VARCHAR(150),
    Filiacao2 VARCHAR(150),
    Sexo VARCHAR(20),
    Cor_Raca VARCHAR(50),
    Povo_Indigena VARCHAR(5),
    Nacionalidade VARCHAR(50),
    Pais_Nacionalidade VARCHAR(50),
    Municipio_Nascimento VARCHAR(100),
    Certidao_Nova VARCHAR(30),
    Pais_Residencia VARCHAR(50),
    CEP VARCHAR(15),
    Municipio_Residencia VARCHAR(100),
    Zona_Residencia VARCHAR(30)
);

CREATE TABLE Anamnese (
    Cod_Anamnese INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Deficiencia VARCHAR(100),
    Tipo_Transtorno VARCHAR(100),
    Tipo_Auxilio VARCHAR(100),
    Tipo_Recurso VARCHAR(100),
    CPF_Aluno VARCHAR(11),
    CPF_Docente VARCHAR(11),
    FOREIGN KEY (CPF_Aluno) REFERENCES Aluno(CPF_Aluno),
    FOREIGN KEY (CPF_Docente) REFERENCES Docente(CPF_Docente)
);

CREATE TABLE Atendimento (
    Cod_Atendimento INT AUTO_INCREMENT PRIMARY KEY,
    Frequencia INT,
    Conteudo TEXT,
    Relatorio_Semanal TEXT,
    Relatorio_Bimestral TEXT,
    Parecer_Mensal TEXT,
    CPF_Aluno VARCHAR(11),
    CPF_Docente VARCHAR(11),
    FOREIGN KEY (CPF_Aluno) REFERENCES Aluno(CPF_Aluno),
    FOREIGN KEY (CPF_Docente) REFERENCES Docente(CPF_Docente)
);

