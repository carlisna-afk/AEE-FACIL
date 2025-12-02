-- ATUALIZAÇÕES NO BANCO DE DADOS

-- Atualizar endereço do aluno
UPDATE Aluno
SET Municipio_Residencia = 'Guarulhos', CEP = '07010-000'
WHERE CPF_Aluno = '11111111111';

-- Atualizar auxílio na anamnese
UPDATE Anamnese
SET Tipo_Auxilio = 'Guia-Intérprete'
WHERE Cod_Anamnese = 1;

-- Atualizar frequência de atendimento
UPDATE Atendimento
SET Frequencia = 5
WHERE Cod_Atendimento = 1;
