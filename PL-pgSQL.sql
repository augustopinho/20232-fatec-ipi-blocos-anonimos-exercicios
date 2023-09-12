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

