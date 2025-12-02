
-- ---------- TABELA ALUNO ----------
INSERT INTO Aluno (
    CPF_Aluno, Nome_Completo, Data_Nascimento, Filiacao1, Filiacao2, Sexo,
    Cor_Raca, Povo_Indigena, Nacionalidade, Pais_Nacionalidade,
    Municipio_Nascimento, Certidao_Nova, Pais_Residencia, CEP,
    Municipio_Residencia, Zona_Residencia
) VALUES
('11111111111', 'Pedro Angelo Marques', '2014-06-19', 'Maria Marques', 'João Marques', 'Masculino',
 'Preto', 'Não', 'Brasileira', 'Brasil', 'São Paulo', '123456', 'Brasil', '01001-000', 'São Paulo', 'Urbana'),

('22222222222', 'Ana Julia Santos', '2012-03-10', 'Carla Santos', 'Paulo Santos', 'Feminino',
 'Parda', 'Não', 'Brasileira', 'Brasil', 'Campinas', '654321', 'Brasil', '13015-000', 'Campinas', 'Urbana');

-- ---------- TABELA DOCENTE ----------
INSERT INTO Docente (
    CPF_Docente, Nome_Completo, Data_Nascimento, Filiacao1, Filiacao2, Sexo,
    Cor_Raca, Povo_Indigena, Nacionalidade, Pais_Nacionalidade,
    Municipio_Nascimento, Certidao_Nova, Pais_Residencia, CEP,
    Municipio_Residencia, Zona_Residencia
) VALUES
('99999999999', 'Simone Ribeiro', '1985-04-19', 'Elisa Ribeiro', 'Carlos Ribeiro',
 'Feminino', 'Branca', 'Não', 'Brasileira', 'Brasil', 'Recife', '445566',
 'Brasil', '50010-000', 'Recife', 'Urbana');

-- ---------- TABELA RESPONSÁVEL ----------
INSERT INTO Responsavel (
    CPF_Responsavel, CPF_Aluno, Nome_Completo, Data_Nascimento, Filiacao1, Filiacao2,
    Sexo, Cor_Raca, Povo_Indigena, Nacionalidade, Pais_Nacionalidade,
    Municipio_Nascimento, Certidao_Nova, Pais_Residencia, CEP,
    Municipio_Residencia, Zona_Residencia
) VALUES
('55555555555', '11111111111', 'Maria Marques', '1980-07-10',
 'Silvia Marques', 'Roberto Marques', 'Feminino', 'Branca', 'Não',
 'Brasileira', 'Brasil', 'São Paulo', '123987', 'Brasil', '01001-000',
 'São Paulo', 'Urbana');

-- ---------- TABELA ANAMNESE ----------
INSERT INTO Anamnese (
    Tipo_Deficiencia, Tipo_Transtorno, Tipo_Auxilio, Tipo_Recurso, CPF_Aluno, CPF_Docente
) VALUES
('TEA', 'TDAH', 'Auxílio Ledor', 'Prova Ampliada', '11111111111', '99999999999');

-- ---------- TABELA ATENDIMENTO ----------
INSERT INTO Atendimento (
    Frequencia, Conteudo, Relatorio_Semanal, Relatorio_Bimestral, Parecer_Mensal,
    CPF_Aluno, CPF_Docente
) VALUES
(4, 'Atividades de alfabetização', 'Boa participação', 'Avanço significativo',
 'Progressos contínuos', '11111111111', '99999999999');
