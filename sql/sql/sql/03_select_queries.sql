-- CONSULTAS SQL DO PROJETO AEE-FACIL

-- 1) SELECT com WHERE
SELECT Nome_Completo, Municipio_Residencia
FROM Aluno
WHERE Zona_Residencia = 'Urbana';

-- 2) SELECT com ORDER BY
SELECT Nome_Completo, CPF_Responsavel
FROM Responsavel
ORDER BY Nome_Completo ASC;

-- 3) SELECT com JOIN
SELECT 
    a.Nome_Completo AS Aluno,
    d.Nome_Completo AS Docente,
    atd.Conteudo,
    atd.Relatorio_Semanal
FROM Atendimento atd
JOIN Aluno a ON atd.CPF_Aluno = a.CPF_Aluno
JOIN Docente d ON atd.CPF_Docente = d.CPF_Docente;

-- 4) SELECT com LIMIT
SELECT Nome_Completo 
FROM Aluno 
LIMIT 1;

-- 5) SELECT com múltiplas condições
SELECT Nome_Completo, Sexo, Municipio_Residencia
FROM Aluno
WHERE Sexo = 'Feminino'
  AND Cor_Raca = 'Parda';
