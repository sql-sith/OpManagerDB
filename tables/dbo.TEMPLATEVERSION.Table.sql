USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TEMPLATEVERSION]    Script Date: 6/29/2019 5:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPLATEVERSION](
	[TEMPLATE] [varchar](255) NOT NULL,
	[VERSION] [bigint] NOT NULL,
 CONSTRAINT [TEMPLATEVERSION_PK] PRIMARY KEY CLUSTERED 
(
	[TEMPLATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
