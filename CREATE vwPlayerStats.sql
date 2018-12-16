CREATE VIEW vwPlayerStats
AS
-- View that shows player stats for each game and their opponent
SELECT pl.FirstName +' ' + pl.LastName AS [Name]
    , pl.PositionAbv
    , dd.[Date]
    , tm.Name AS Team
    , opp.Name AS Opponent
    , sf.[PassingYards] 
    , [PassingTouchdowns]
	, [Interceptions]
	, [SacksReceived]
	, [RushingYards]
	, [RushingTouchdowns] 
	, [Receptions] 
	, [ReceivingYards]
	, [ReceivingTouchdowns] 
	, [ReturnYards]
	, [ReturnTouchdowns]
	, [FumblesLost]
	, [FumbleReturnTD]
FROM dbo.PlayerStatsFact sf
JOIN dbo.Player pl ON sf.PlayerID = pl.PlayerID
JOIN dbo.DateDim dd ON sf.DateID = dd.DateID
JOIN dbo.PlayerTeamBridge ptb ON sf.PlayerID = ptb.PlayerID
    AND dd.DateID BETWEEN ptb.StartDateID AND ptb.EndDateID
JOIN dbo.Team tm ON ptb.TeamID = tm.TeamID
JOIN dbo.Schedule sc ON tm.TeamID IN (sc.AwayTeamID, sc.HomeTeamID)
    AND dd.DateID =sc.DateID
JOIN dbo.Team Opp ON Opp.TeamID IN (sc.HomeTeamID, sc.AwayTeamID)
    AND Opp.TeamID <> tm.TeamID
