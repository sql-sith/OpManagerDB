USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STATUSDEFINITION]    Script Date: 6/29/2019 5:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATUSDEFINITION](
	[NAME] [varchar](255) NOT NULL,
	[STATUS] [bit] NOT NULL,
 CONSTRAINT [STATUSDEFINITION_PK] PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STATUSDEFINITION] ADD  DEFAULT ((0)) FOR [STATUS]
GO
