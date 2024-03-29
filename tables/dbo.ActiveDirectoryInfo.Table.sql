USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ActiveDirectoryInfo]    Script Date: 6/29/2019 5:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActiveDirectoryInfo](
	[AD_ID] [bigint] NOT NULL,
	[SERVERNAME] [varchar](100) NULL,
	[DEFAULTDOMAIN] [varchar](50) NULL,
	[USERNAME] [varchar](50) NULL,
	[PASSWORD] [varchar](50) NULL,
	[SECONDARYSERVERNAME] [varchar](250) NULL,
	[ISSSL] [bit] NULL,
 CONSTRAINT [ActiveDirectoryInfo_PK] PRIMARY KEY CLUSTERED 
(
	[AD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActiveDirectoryInfo] ADD  DEFAULT ((0)) FOR [ISSSL]
GO
