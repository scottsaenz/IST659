INSERT INTO [dbo].[PlayerTeamBridge] (PlayerID, TeamID, StartDateID)
VALUES((SELECT PlayerID FROM dbo.Player WHERE LastName = 'Mahomes')
        ,(SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
        ,20170720
        )
INSERT INTO [dbo].[PlayerTeamBridge] (PlayerID, TeamID, StartDateID)
VALUES((SELECT PlayerID FROM dbo.Player WHERE LastName = 'Hunt')
        ,(SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
        ,20170605
        )