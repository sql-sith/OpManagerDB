USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Projection_Operator]    Script Date: 6/29/2019 5:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projection_Operator](
	[VIEW_ID] [bigint] NOT NULL,
	[INPUT_RELVAR_ID] [bigint] NOT NULL,
 CONSTRAINT [Projection_Operator_PK] PRIMARY KEY CLUSTERED 
(
	[VIEW_ID] ASC,
	[INPUT_RELVAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1076604848]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1076604848] ON [dbo].[Projection_Operator]
(
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_984988129]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_984988129] ON [dbo].[Projection_Operator]
(
	[INPUT_RELVAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Projection_Operator]  WITH CHECK ADD  CONSTRAINT [Projection_Operator_FK] FOREIGN KEY([VIEW_ID])
REFERENCES [dbo].[Views] ([VIEW_ID])
GO
ALTER TABLE [dbo].[Projection_Operator] CHECK CONSTRAINT [Projection_Operator_FK]
GO
ALTER TABLE [dbo].[Projection_Operator]  WITH CHECK ADD  CONSTRAINT [Projection_Operator_FK1] FOREIGN KEY([INPUT_RELVAR_ID])
REFERENCES [dbo].[Relvars] ([RELVAR_ID])
GO
ALTER TABLE [dbo].[Projection_Operator] CHECK CONSTRAINT [Projection_Operator_FK1]
GO
