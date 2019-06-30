USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SPMTreeGroups]    Script Date: 6/29/2019 5:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPMTreeGroups](
	[GID] [bigint] NOT NULL,
	[GROUPNAME] [varchar](100) NOT NULL,
 CONSTRAINT [SPMTreeGroups_PK] PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
