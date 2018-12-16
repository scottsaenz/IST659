CREATE FUNCTION fn_GetPlayerID(@FirstName VARCHAR(50), @LastName VARCHAR(50), @PositionAbv VARCHAR(3))
RETURNS INT AS
BEGIN
    DECLARE @ReturnINT INT

    /*
        Returns PlayerID based on LastName, FirstName, and PositionAbv

        There is no publicly available info that indicates uniqueness for players, such as SSN
        Additional fields may need to be brought in if this returns an error, which will 
        occur if more that one PlayerID is returned from the select statement.
    */

    SET @ReturnINT = (SELECT PlayerID
                        FROM dbo.Player
                        WHERE FirstName = @FirstName
                            AND LastName = @LastName
                            AND PositionAbv = @PositionAbv )

    RETURN @ReturnINT
END