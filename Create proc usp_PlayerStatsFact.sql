CREATE PROC usp_PlayerStatsFact
AS
/*
    Merges stats from the staging table into dbo.PlayerStatsFact. 
*/

BEGIN
    
    SELECT dbo.fn_GetPlayerID(ps.PlayerFirstName, ps.PlayerLastName, ps.[Position Abbr]) AS PlayerID
        , dd.dateID
        , ps.PassingYards
        , ps.PassingTouchdowns
        , ps.Interceptions
        , ps.SacksReceived
        , ps.RushingYards
        , ps.RushingTouchdowns
        , ps.Receptions
        , ps.ReceivingYards
        , ps.ReceivingTouchdowns
        , ps.ReturnYards
        , ps.ReturnTouchdowns
        , ps.FumblesLost
        , ps.FumbleReturnTD
    INTO #temp  
    FROM [dbo].[PlayerStatsSource] ps
    JOIN dbo.DateDim dd ON ps.[Date] = dd.[Date]
    
    MERGE dbo.PlayerStatsFact AS tgt
    USING #temp AS src
    ON tgt.PlayerID = src.PlayerID
        AND tgt.DateID = src.DateID
    WHEN MATCHED -- Account for updates and avoids duplicates
        THEN UPDATE
        SET       tgt.PassingYards          = src.PassingYards          
                , tgt.PassingTouchdowns     = src.PassingTouchdowns    
                , tgt.Interceptions         = src.Interceptions
                , tgt.SacksReceived         = src.SacksReceived
                , tgt.RushingYards          = src.RushingYards
                , tgt.RushingTouchdowns     = src.RushingTouchdowns
                , tgt.Receptions            = src.Receptions
                , tgt.ReceivingYards        = src.ReceivingYards
                , tgt.ReceivingTouchdowns   = src.ReceivingTouchdowns
                , tgt.ReturnYards           = src.ReturnYards
                , tgt.ReturnTouchdowns      = src.ReturnTouchdowns
                , tgt.FumblesLost           = src.FumblesLost
                , tgt.FumbleReturnTD        = src.FumbleReturnTD
    WHEN NOT MATCHED
        THEN INSERT -- Most common scenario; inserts new stats into fact table
                (PlayerID
                ,dateID
                ,PassingYards
                ,PassingTouchdowns
                ,Interceptions
                ,SacksReceived
                ,RushingYards
                ,RushingTouchdowns
                ,Receptions
                ,ReceivingYards
                ,ReceivingTouchdowns
                ,ReturnYards
                ,ReturnTouchdowns
                ,FumblesLost
                ,FumbleReturnTD) 
        VALUES(  src.PlayerID
                ,src.dateID
                ,src.PassingYards
                ,src.PassingTouchdowns
                ,src.Interceptions
                ,src.SacksReceived
                ,src.RushingYards
                ,src.RushingTouchdowns
                ,src.Receptions
                ,src.ReceivingYards
                ,src.ReceivingTouchdowns
                ,src.ReturnYards
                ,src.ReturnTouchdowns
                ,src.FumblesLost
                ,src.FumbleReturnTD) 
        ;
END