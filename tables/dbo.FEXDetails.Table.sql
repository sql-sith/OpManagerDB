USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FEXDetails]    Script Date: 6/29/2019 5:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEXDetails](
	[FEX_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[DN] [varchar](250) NOT NULL,
	[ID] [int] NOT NULL,
	[ADMIN_POWER_STATE] [varchar](100) NOT NULL,
	[ADMIN_STATE] [varchar](100) NOT NULL,
	[CONFIG_STATE] [varchar](150) NOT NULL,
	[lIC_STATE] [varchar](150) NOT NULL,
	[MODEL] [varchar](250) NOT NULL,
	[OPER_QUALIFIER] [varchar](150) NOT NULL,
	[OPER_QUALIFIER_REASON] [varchar](250) NOT NULL,
	[OPER_STATE] [varchar](150) NOT NULL,
	[OPERABILITY] [varchar](100) NOT NULL,
	[POWER] [varchar](100) NOT NULL,
	[PRESENCE] [varchar](100) NOT NULL,
	[REVISION] [varchar](100) NOT NULL,
	[SERIAL] [varchar](250) NOT NULL,
	[SWITCH_ID] [varchar](100) NOT NULL,
	[THERMAL] [varchar](100) NOT NULL,
	[USER_LABEL] [varchar](250) NOT NULL,
	[VENDOR] [varchar](150) NOT NULL,
	[VOLTAGE] [varchar](150) NOT NULL,
 CONSTRAINT [FEXDetails_PK] PRIMARY KEY CLUSTERED 
(
	[FEX_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
