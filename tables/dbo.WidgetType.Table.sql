USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WidgetType]    Script Date: 6/29/2019 5:53:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetType](
	[TYPEID] [bigint] NOT NULL,
	[TYPENAME] [varchar](100) NOT NULL,
 CONSTRAINT [WidgetType_PK] PRIMARY KEY CLUSTERED 
(
	[TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [WidgetType_UK0] UNIQUE NONCLUSTERED 
(
	[TYPENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
