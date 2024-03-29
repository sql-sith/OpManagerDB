USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LAActiveDirectoryInfo]    Script Date: 6/29/2019 5:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAActiveDirectoryInfo](
	[AD_ID] [bigint] NOT NULL,
	[SERVERNAME] [nvarchar](100) NULL,
	[DEFAULTDOMAIN] [nvarchar](50) NULL,
	[USERNAME] [nvarchar](50) NULL,
	[PASSWORD] [nvarchar](50) NULL,
 CONSTRAINT [LAActiveDirectoryInfo_PK] PRIMARY KEY CLUSTERED 
(
	[AD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
