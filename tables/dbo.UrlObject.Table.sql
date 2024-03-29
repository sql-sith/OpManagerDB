USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UrlObject]    Script Date: 6/29/2019 5:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlObject](
	[NAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[URL] [varchar](400) NULL,
	[USERNAME] [varchar](50) NULL,
	[PASSWORD] [varchar](50) NULL,
	[QUERYSTRING] [varchar](250) NULL,
	[METHOD] [varchar](50) NULL,
	[MATCHCONTENT] [varchar](250) NULL,
	[ERRORCONTENT] [varchar](50) NULL,
	[TIMEOUT] [varchar](50) NULL,
	[PROFILE] [varchar](250) NULL,
	[RESPONSECODE] [varchar](50) NULL,
	[ACCEPTCOOKIE] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UrlObject] ADD  DEFAULT ((1)) FOR [ACCEPTCOOKIE]
GO
