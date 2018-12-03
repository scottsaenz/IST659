INSERT INTO Schedule (DateID, AwayTeamID, HomeTeamID, TrueHomeFlag)
VALUES(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20180909')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'LAC')
    , 1
),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20180916')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'PIT')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20180923')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'SF')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181001')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'DEN')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181007')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'JAX')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181014')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'NE')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181021')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'CIN')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181028')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'DEN')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181104')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'CLE')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181111')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'ARI')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181119')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'LAR')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181202')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'OAK')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181209')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'BAL')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181213')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'LAC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181223')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'SEA')
    , 1

),
(
      (SELECT DateID FROM dbo.DateDim WHERE [Date] = '20181230')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'OAK')
    , (SELECT TeamID FROM dbo.Team WHERE Shorthand = 'KC')
    , 1

)