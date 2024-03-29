USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RULETYPES]    Script Date: 6/29/2019 5:51:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RULETYPES](
	[RTID] [int] NOT NULL,
	[RULETYPE] [varchar](20) NOT NULL,
	[DISPLAYNAME] [varchar](100) NOT NULL,
	[SUPPORTEDOS] [varchar](20) NOT NULL,
 CONSTRAINT [RULETYPES_PK1] PRIMARY KEY CLUSTERED 
(
	[RTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [RULETYPES_UK1] UNIQUE NONCLUSTERED 
(
	[RULETYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
