USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UPSObject]    Script Date: 6/29/2019 5:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPSObject](
	[NAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[MODEL] [varchar](100) NULL,
	[LINKSTATUS] [varchar](50) NULL,
	[BATTERYSTATUS] [varchar](50) NULL,
	[BATTERYHEALTH] [varchar](50) NULL,
	[RUNTIMEREMAINING] [varchar](100) NULL,
	[LASTSELFTESTRESULT] [varchar](50) NULL,
	[OUTPUTVOLTS] [varchar](50) NULL,
	[OUTPUTCURRENT] [varchar](50) NULL,
	[LASTSELFTESTDATE] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
