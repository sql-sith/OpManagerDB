USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Fk_Pointers]    Script Date: 6/29/2019 5:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fk_Pointers](
	[POINTER_ID] [bigint] NOT NULL,
	[POINTER_ORIGIN_TABLE] [varchar](30) NOT NULL,
	[POINTER_DESTINATION_TABLE] [varchar](30) NOT NULL,
	[IS_POINTER_UNIQUE] [bit] NOT NULL,
 CONSTRAINT [Fk_Pointers_PK] PRIMARY KEY CLUSTERED 
(
	[POINTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fk_Pointers] ADD  DEFAULT ((0)) FOR [IS_POINTER_UNIQUE]
GO
