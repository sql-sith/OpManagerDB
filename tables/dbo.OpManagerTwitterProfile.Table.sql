USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OpManagerTwitterProfile]    Script Date: 6/29/2019 5:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpManagerTwitterProfile](
	[USERNAME] [varchar](250) NOT NULL,
	[PASSWORD] [varchar](250) NOT NULL,
	[DMID] [bigint] NOT NULL,
 CONSTRAINT [OpManagerTwitterProfile_PK1] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
