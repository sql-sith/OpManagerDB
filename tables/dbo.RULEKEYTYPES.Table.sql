USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RULEKEYTYPES]    Script Date: 6/29/2019 5:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RULEKEYTYPES](
	[RULEKEYTYPEID] [int] NOT NULL,
	[RULEKEYTYPENAME] [varchar](20) NOT NULL,
 CONSTRAINT [RULEKEYTYPES_PK1] PRIMARY KEY CLUSTERED 
(
	[RULEKEYTYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [RULEKEYTYPES_UK1] UNIQUE NONCLUSTERED 
(
	[RULEKEYTYPENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
