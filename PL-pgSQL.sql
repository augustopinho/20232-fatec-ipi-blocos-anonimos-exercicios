-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
DO $$
DECLARE
	n1 NUMERIC (5, 2);
BEGIN
	n1 := floor (random () * 100 + 1) :: INT;
	RAISE NOTICE 'n1: %', n1;
END $$;

--1.2. Faça um programa que gere um valor real e o exiba.
DO $$
DECLARE
	n1 NUMERIC (5, 2);
BEGIN
	n1 := random () * 9 + 1;
	RAISE NOTICE 'n1: %', n1;
END $$;

--1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma
--temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba.
DO $$
DECLARE
	n1 NUMERIC (5, 2);
	n2 NUMERIC (5, 2);
BEGIN
	n1 := floor(random () * 11 + 20) :: INT;
	RAISE NOTICE 'Temperatura em C°: % , Temperatura em F°: %', n1, n1 * 1.8 + 32;
END $$

--1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
--que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
DO $$
DECLARE
	n1 NUMERIC (5, 2); -- valor a
	n2 NUMERIC (5, 2); -- valor b
	n3 NUMERIC (5, 2); -- valor c
BEGIN
	--gerando os valores:
	n1 := random() * 9 + 1; 
	n2 := random() * 9 + 1; 
	n3 := random() * 9 + 1; 
	--calculando o delta e ja declarando os valores e o resultado
	RAISE NOTICE 'Valor de a: % , Valor de b: % , Valor de c: % , Valor de Delta: %', n1, n2, n3, (n2^2) - 4 * n1 * n3;
END $$

--1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
--e a raiz quadrada de seu sucessor.
DO $$
DECLARE
	n1 NUMERIC (5, 2);
	n2 NUMERIC (5, 2);
	n3 NUMERIC (5, 2);
BEGIN
	--Gerando o numero
	n1 := floor (random () * 100 + 1) :: INT;
	--Encontrando antecessor e sucessor especificamente
	n2 := n1 - 1;
	n3 := n1 + 1;
	--Calculando e printando na tela
	RAISE NOTICE 'Numero gerado: %, Valor do antecessor: %, Valor do sucessor: %, Raiz cúbica do antecessor: %, Raiz quadrada do sucessor: %', n1, n2, n3, ||/n2, |/n3; 	
END $$;

--1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
--valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
--exibir o valor total do terreno.

DO $$
DECLARE
	n1 NUMERIC (5, 2);
	n2 NUMERIC (5, 2);
BEGIN
	--Gerando tamanho do terreno (inteiro)
	n1 := floor (random () * 100 + 1) :: INT;
	--Gerando preço por metro quadrado (real)
	n2 := random () * 10 + 60;
	--Calculando e ja printando
	RAISE NOTICE 'Tamanho do terreno: % , Valor por metro quadrado: %, Valor total: %', n1, n2, floor (n1 * n2);
END $$

--1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
--pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
--[2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
--envolvendo dias, meses, anos bissextos etc.

DO $$
DECLARE
	n1 NUMERIC (18, 6);
	n2 NUMERIC (18, 6);
BEGIN
	--Gerando ano de nascimento
	n1 := floor (random() * 21 + 1980) :: INT;
	--Gerando 'ano atual'
	n2 := floor (random() * 11 + 2010) :: INT;
	--Calculando e Printando
	RAISE NOTICE 'Ano de nascimento: %, Ano atual: %, Idade: %', n1, n2, n2 - n1;
END $$