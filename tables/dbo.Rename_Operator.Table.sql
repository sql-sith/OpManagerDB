USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Rename_Operator]    Script Date: 6/29/2019 5:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rename_Operator](
	[VIEW_ID] [bigint] NOT NULL,
	[RELVAR_ID] [bigint] NOT NULL,
	[ATTRIBUTE_NAME] [varchar](100) NOT NULL,
	[ALIASED_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [Rename_Operator_PK] PRIMARY KEY CLUSTERED 
(
	[VIEW_ID] ASC,
	[RELVAR_ID] ASC,
	[ATTRIBUTE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1310121663]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1310121663] ON [dbo].[Rename_Operator]
(
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1959065938]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1959065938] ON [dbo].[Rename_Operator]
(
	[RELVAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rename_Operator]  WITH CHECK ADD  CONSTRAINT [Rename_Operator_FK] FOREIGN KEY([VIEW_ID])
REFERENCES [dbo].[Views] ([VIEW_ID])
GO
ALTER TABLE [dbo].[Rename_Operator] CHECK CONSTRAINT [Rename_Operator_FK]
GO
ALTER TABLE [dbo].[Rename_Operator]  WITH CHECK ADD  CONSTRAINT [Rename_Operator_FK1] FOREIGN KEY([RELVAR_ID])
REFERENCES [dbo].[Relvars] ([RELVAR_ID])
GO
ALTER TABLE [dbo].[Rename_Operator] CHECK CONSTRAINT [Rename_Operator_FK1]
GO
