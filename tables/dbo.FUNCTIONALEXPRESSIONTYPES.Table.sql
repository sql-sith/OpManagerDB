USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FUNCTIONALEXPRESSIONTYPES]    Script Date: 6/29/2019 5:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCTIONALEXPRESSIONTYPES](
	[EXPRESSIONTYPEID] [bigint] NOT NULL,
	[EXPRESSIONTYPE] [varchar](20) NOT NULL,
 CONSTRAINT [FUNCTIONALEXPRESSIONTYPES_PK1] PRIMARY KEY CLUSTERED 
(
	[EXPRESSIONTYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [FUNCTIONALEXPRESSIONTYPES_UK1] UNIQUE NONCLUSTERED 
(
	[EXPRESSIONTYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
