USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LAYER2CONFIGURATION]    Script Date: 6/29/2019 5:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAYER2CONFIGURATION](
	[MAPID] [bigint] NOT NULL,
	[MAPNAME] [varchar](50) NOT NULL,
	[SEEDDEVICE] [varchar](50) NOT NULL,
	[SCHEDULEINTERVAL] [bigint] NOT NULL,
	[AUTODEPENDENCY] [bit] NOT NULL,
	[AUTODISCOVERY] [bit] NOT NULL,
	[LASTUPDATED] [bigint] NOT NULL,
 CONSTRAINT [LAYER2CONFIGURATION_PK] PRIMARY KEY CLUSTERED 
(
	[MAPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [LAYER2CONFIGURATION_UK1] UNIQUE NONCLUSTERED 
(
	[MAPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LAYER2CONFIGURATION] ADD  DEFAULT ('-1') FOR [LASTUPDATED]
GO
