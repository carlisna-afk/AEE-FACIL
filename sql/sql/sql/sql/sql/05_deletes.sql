-- REMOÇÕES NO BANCO DE DADOS

-- Excluir responsável específico
DELETE FROM Responsavel
WHERE CPF_Responsavel = '55555555555';

-- Excluir atendimento
DELETE FROM Atendimento
WHERE Cod_Atendimento = 1;

-- Excluir anamnese
DELETE FROM Anamnese
WHERE Cod_Anamnese = 1;
