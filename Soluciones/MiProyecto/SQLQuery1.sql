-------------------------------------------------------------------------------
-- EJM de CREAR un STORE PROCEDURE (SP)
CREATE PROC S_paciente(@idpaciente INT)
AS
SELECT * FROM Paciente WHERE idPaciente=@idpaciente
GO

-- EJM de ejecutar un SP
SELECT * FROM Paciente
EXEC S_paciente 3
EXEC S_paciente 99
EXEC S_paciente 19

-------------------------------------------------------------------------------
-- VARIABLES:
DECLARE @ordenamiento CHAR(1) = 'A'
--SET @ordenamiento = 'D'
PRINT @ordenamiento

DECLARE @ordenamiento CHAR(1)
DECLARE @valorOrdenamiento CHAR(1)
SET @valorOrdenamiento = @ordenamiento
PRINT @valorOrdenamiento

DECLARE @ordenamiento CHAR(1)
DECLARE @valorOrdenamiento CHAR(1)
SET @valorOrdenamiento = ISNULL(@ordenamiento, 'A')
PRINT @valorOrdenamiento

-------------------------------------------------------------------------------
-- EJM de SUBCONSULTA
SELECT * FROM Paciente
EXEC S_paciente 3
EXEC S_paciente 99
EXEC S_paciente 19

-------------------------------------------------------------------------------