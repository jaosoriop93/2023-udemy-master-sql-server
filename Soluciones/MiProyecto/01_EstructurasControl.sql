/*
IF-ELSE
BEGIN-END
*/
DECLARE @IDPACIENTE INT
DECLARE @IDTURNO INT

SET @IDPACIENTE = 7

IF @IDPACIENTE = 7
	BEGIN
		SET @IDTURNO = 20
		SELECT * FROM Paciente WHERE idPaciente=@IDPACIENTE
		PRINT @IDTURNO
	END
ELSE
	BEGIN
		PRINT 'No se cumplió la condición'
	END

-----------------------------------------------------------------
/*
EXISTS
*/
DECLARE @IDPACIENTE INT
DECLARE @IDTURNO INT

SET @IDPACIENTE = 7

IF @IDPACIENTE = 7
	BEGIN
		SET @IDTURNO = 20
		SELECT * FROM Paciente WHERE idPaciente=@IDPACIENTE
		PRINT @IDTURNO
		IF EXISTS(SELECT * FROM Paciente WHERE idPaciente=4)
			PRINT 'Existe'
	END

-----------------------------------------------------------------
/*
WHILE
*/

DECLARE @CONTADOR INT = 0
WHILE @CONTADOR <= 10
BEGIN
	PRINT @CONTADOR
	SET @CONTADOR = @CONTADOR + 1
END

--------------------------------------------------------------
/*
CASE
*/

DECLARE @VALOR INT
DECLARE @RESULTADO CHAR(10)=''
SET @VALOR = 20

SET @RESULTADO = (
	CASE
		WHEN @VALOR = 10 THEN 'ROJO'
		WHEN @VALOR = 20 THEN 'VERDE'
		WHEN @VALOR = 30 THEN 'AZUL'
		WHEN @VALOR = 10 THEN 'ROJO'
		ELSE 'GRIS'
	END
)
PRINT @RESULTADO


-----------------
SELECT *, (CASE WHEN estado=1 THEN 'VERDE'
			    WHEN estado=2 THEN 'ROJO'
				WHEN estado=3 THEN 'AZUL'
		   ELSE 'GRIS'
		   END) as COLORTURNO FROM TURNO

-----------------------------------------------------------------
/*
RETURN-BREAK
*/
DECLARE @CONTADOR INT = 0
WHILE @CONTADOR <= 10
BEGIN
	PRINT @CONTADOR
	SET @CONTADOR = @CONTADOR + 1
	IF @CONTADOR = 3
		RETURN
	PRINT 'HOLA1'
END
PRINT 'HOLA2'

-----------------------------------------------------------------

DECLARE @CONTADOR INT = 0
WHILE @CONTADOR <= 10
BEGIN
	PRINT @CONTADOR
	SET @CONTADOR = @CONTADOR + 1
	IF @CONTADOR = 3
		BREAK
	PRINT 'HOLA1'
END
PRINT 'HOLA2'

-----------------------------------------------------------------
/*
TRY-CATCH
*/

DECLARE @CONTADOR INT = 0
WHILE @CONTADOR <= 10
BEGIN
	PRINT @CONTADOR
	SET @CONTADOR = @CONTADOR + 1
	IF @CONTADOR = 3
		BREAK
	--PRINT 'HOLA1'
END
PRINT 'HOLA2'

BEGIN TRY
	SET @CONTADOR = 'Prueba'
END TRY

BEGIN CATCH
	PRINT 'No es posible asignar un texto a la variable @CONTADOR'
END CATCH