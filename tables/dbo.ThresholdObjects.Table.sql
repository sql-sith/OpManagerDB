USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ThresholdObjects]    Script Date: 6/29/2019 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThresholdObjects](
	[NAME] [varchar](100) NOT NULL,
	[KIND] [varchar](50) NULL,
	[SEVERITY] [int] NULL,
	[TRIGGERSEVERITY] [int] NULL,
	[RESETSEVERITY] [int] NULL,
	[THRESHOLDTYPE] [varchar](50) NULL,
	[CATEGORY] [varchar](20) NULL,
	[THRESHOLDVALUE] [float] NULL,
	[REARMVALUE] [float] NULL,
	[MMESSAGE] [varchar](255) NULL,
	[CLEARMESSAGE] [varchar](255) NULL,
	[SENDCLEAR] [varchar](10) NULL,
	[ALLOWED] [varchar](100) NULL,
	[DISALLOWED] [varchar](100) NULL,
	[OID] [varchar](50) NULL,
	[OIDTYPE] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
