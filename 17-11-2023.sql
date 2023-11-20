-- Atualize os salarios de todos os funcionarios aumentando em 8% os seus valores
UPDATE funcionario
set salario = salario * 0.08 + salario;

-- OU

update funcionario
set salario = salario * 1.08;

-- Atualize a matricula de aqlgum funcionrio para 20231117senac
SELECT * FROM funcionario;
update funcionario -- atualizar a tabela funcionario
set matricula = "20231117senac"
where codFuncionario = 4; -- id do funcionario

SELECT * FROM funcionario;

-- Crie uma lista que informe o nome do departamento e a quantidade de funcionarios
-- alocados nesses departamentos.

select departamento.nome departamento, count(codFuncionario) as "QTD" -- count conta a quantidade de um campo
from funcionario, departamento
where funcionario.departamento_codDepart = departamento.codDepart
group by departamento.nome;


-- selecione o maior salario entre os funcionarios
select max(salario) as "maior salário" from funcionario;


-- informe a quantidade de funcionarios que moram em vitoria 
select  count(codFuncionario) as "QTD De Func"
from funcionario, endereco
where funcionario.endereco_codEndereco = endereco.codEndereco
and cidade = "vitória";

-- Crie uma lista que 

select departamento.nome as departamento, sum(salario) as "salário total"
from funcionario, departamento
where funcionario.departamento_codDepart = departamento.codDepart
group by departamento.nome;



