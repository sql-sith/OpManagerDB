USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InterfaceDefinitionTemplate]    Script Date: 6/29/2019 5:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfaceDefinitionTemplate](
	[TYPEID] [bigint] NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](100) NOT NULL,
	[IMAGEPATH] [varchar](100) NOT NULL,
	[STATUSPOLLFT] [int] NOT NULL,
 CONSTRAINT [InterfaceDefinitionTemplate_PK] PRIMARY KEY CLUSTERED 
(
	[TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InterfaceDefinitionTemplate] ADD  DEFAULT ('1') FOR [STATUSPOLLFT]
GO
