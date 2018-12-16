CREATE FUNCTION fn_GetPlayerTeamBridgeID(@PlayerID INT
                            , @TeamID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Return INT
/*
    Receives the PlayerID and the TeamID and returns the PlayerTeamBridgeID
*/
    
     SET @Return=( SELECT PlayerTeamBridgeID
                    FROM dbo.PlayerTeamBridge
                    WHERE PlayerID = @PlayerID
                        AND TeamID = @TeamID)

    RETURN @Return
END