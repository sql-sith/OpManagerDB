USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WRITE_COMMUNITY]    Script Date: 6/29/2019 5:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WRITE_COMMUNITY](
	[WRITEINDEX] [bigint] NOT NULL,
	[WRITE] [varchar](17) NOT NULL,
 CONSTRAINT [WRITE_COMMUNITY_PK] PRIMARY KEY CLUSTERED 
(
	[WRITEINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [WRITE_COMMUNITY_UK1] UNIQUE NONCLUSTERED 
(
	[WRITE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
