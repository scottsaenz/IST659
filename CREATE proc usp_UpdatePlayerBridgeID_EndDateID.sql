CREATE  PROC usp_UpdatePlayerBridgeID_EndDateID
    @LastName VARCHAR(50)
    , @FirstName VARCHAR(50)
    , @PositionAbbv VARCHAR(3)
    , @TeamAbbv CHAR(3)
    , @EndDateID INT
AS 
BEGIN
DECLARE @PlayerTeamBridgeID INT
    BEGIN TRY
        DECLARE @Return INT
            , @PlayerID INT
        SET @PlayerID = (SELECT PlayerID
                        FROM dbo.Player
                        WHERE LastName = @LastName
                            AND FirstName = @FirstName
                            AND PositionAbv = @PositionAbbv)
    END TRY
    BEGIN CATCH
        SELECT 'Must return one and only one player. Examine function logic.
                Parameters passed  were: @LastName = ' + @LastName + '
                    @FirstName = ' + @FirstName + '
                    @PositionAbbv = ' + @PositionAbbv
    END CATCH
    BEGIN TRY
        DECLARE @TeamID INT

        SET @TeamID = (SELECT TeamID FROM dbo.Team WHERE Shorthand = @TeamAbbv)
    END TRY
    BEGIN CATCH
        SELECT 'Invalid Team abbreviation. Value passed was ' + @TeamAbbv
    END CATCH
SET @PlayerTeamBridgeID = (SELECT dbo.fn_GetPlayerTeamBridgeID(@PlayerID, @TeamID))
UPDATE
dbo.PlayerTeamBridge
SET EndDateID = @EndDateID
WHERE PlayerTeamBridgeID = @PlayerTeamBridgeID
END


