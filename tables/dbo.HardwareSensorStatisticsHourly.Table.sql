USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HardwareSensorStatisticsHourly]    Script Date: 6/29/2019 5:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HardwareSensorStatisticsHourly](
	[SENSORID] [bigint] NOT NULL,
	[PARAMETERID] [bigint] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[VALUE] [bigint] NULL,
 CONSTRAINT [HardwareSensorStatisticsHourly_PK] PRIMARY KEY CLUSTERED 
(
	[SENSORID] ASC,
	[PARAMETERID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
