USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProfileTask]    Script Date: 6/29/2019 5:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileTask](
	[ACTIONID] [bigint] NOT NULL,
	[ACTIONNAME] [varchar](100) NOT NULL,
	[CLASSNAME] [varchar](250) NOT NULL,
 CONSTRAINT [ProfileTask_PK1] PRIMARY KEY CLUSTERED 
(
	[ACTIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
