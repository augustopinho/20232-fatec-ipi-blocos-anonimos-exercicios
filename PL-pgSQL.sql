-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
DO $$
DECLARE
	n1 NUMERIC (5, 2);
BEGIN
	n1 := floor (random () * 100 + 1) :: INT;
	RAISE NOTICE 'n1: %', n1;
END $$;