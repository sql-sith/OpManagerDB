USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OPERATORS]    Script Date: 6/29/2019 5:49:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPERATORS](
	[OPERATORID] [int] NOT NULL,
	[OPERATOR] [varchar](50) NOT NULL,
 CONSTRAINT [OPERATORS_PK1] PRIMARY KEY CLUSTERED 
(
	[OPERATORID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [OPERATORS_UK1] UNIQUE NONCLUSTERED 
(
	[OPERATOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
