USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 6/29/2019 5:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactDetails](
	[USERID] [bigint] NOT NULL,
	[EMAILID] [varchar](255) NULL,
	[LANDLINE] [varchar](30) NULL,
	[MOBILE] [varchar](30) NULL,
	[SMSMAILID] [varchar](255) NULL,
	[TWITTERID] [varchar](255) NULL,
 CONSTRAINT [ContactDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
