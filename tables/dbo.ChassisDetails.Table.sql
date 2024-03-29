USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ChassisDetails]    Script Date: 6/29/2019 5:46:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChassisDetails](
	[CHASSIS_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[ID] [int] NOT NULL,
	[DN] [varchar](250) NOT NULL,
	[MODEL] [varchar](50) NOT NULL,
	[SERIAL] [varchar](50) NOT NULL,
	[POWERSTATUS] [varchar](50) NOT NULL,
	[CONFIGSTATE] [varchar](50) NOT NULL,
	[OPERABILITY] [varchar](50) NOT NULL,
	[OPERSTATE] [varchar](50) NOT NULL,
 CONSTRAINT [ChassisDetails_PK] PRIMARY KEY CLUSTERED 
(
	[CHASSIS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
