USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[commonpollmetainfo]    Script Date: 6/29/2019 5:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commonpollmetainfo](
	[featureid] [int] NOT NULL,
	[schedulername] [varchar](50) NOT NULL,
	[handlerclass] [varchar](100) NOT NULL,
	[threadcount] [int] NOT NULL,
	[queryinterval] [bigint] NOT NULL,
 CONSTRAINT [commonpollmetainfo_PK] PRIMARY KEY CLUSTERED 
(
	[featureid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [commonpollmetainfo_UK0] UNIQUE NONCLUSTERED 
(
	[schedulername] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
