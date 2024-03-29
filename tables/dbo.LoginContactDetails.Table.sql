USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LoginContactDetails]    Script Date: 6/29/2019 5:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginContactDetails](
	[USERID] [bigint] NOT NULL,
	[EMAILID] [varchar](200) NULL,
	[LANDLINE] [varchar](30) NULL,
	[MOBILE] [varchar](30) NULL,
	[SMSMAILID] [varchar](150) NULL,
	[TWITTERID] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
