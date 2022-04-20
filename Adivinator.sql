DECLARE @digit1 int, @digit2 int, @digit3 int
SET @digit1 = (select FLOOR(RAND()*(0-9+1))+9)
SET @digit2 = (select FLOOR(RAND()*(0-9+1))+9)
SET @digit3 = (select FLOOR(RAND()*(0-9+1))+9)
IF (@digit1 = 1) and (@digit2 = 6) and (@digit3 = 6)
    BEGIN
        PRINT 'La contraseña ha sido acertada ' + CAST(@digit1 as varchar) + CAST(@digit2 as varchar) + CAST(@digit3 as VARCHAR)
    END

ELSE
    BEGIN
        PRINT 'Número ' + CAST(@digit1 as varchar) + CAST(@digit2 as varchar) + CAST(@digit3 as VARCHAR) + ' Prueba otra vez'
    END

DECLARE @resultado int
SET @resultado = (select FLOOR(RAND()*(0-999+1))+999)
WHILE (@resultado <> 166)
    BEGIN
        PRINT @resultado
    END

IF (@resultado = 166)
    BEGIN
        print 'La contraseña ha sido acertada ' + CAST(@resultado as varchar)
    END