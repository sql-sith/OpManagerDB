USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Proj_Opr_Output]    Script Date: 6/29/2019 5:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proj_Opr_Output](
	[VIEW_ID] [bigint] NOT NULL,
	[INPUT_RELVAR_ID] [bigint] NOT NULL,
	[INPUT_ATTRIBUTE_NAME] [varchar](170) NOT NULL,
	[IS_RENAMED] [bit] NOT NULL,
	[RENAMED_ATTRIBUTE_RENAME] [varchar](250) NULL,
 CONSTRAINT [Proj_Opr_Output_PK] PRIMARY KEY CLUSTERED 
(
	[VIEW_ID] ASC,
	[INPUT_RELVAR_ID] ASC,
	[INPUT_ATTRIBUTE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_335725363]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_335725363] ON [dbo].[Proj_Opr_Output]
(
	[VIEW_ID] ASC,
	[INPUT_RELVAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proj_Opr_Output] ADD  DEFAULT ((0)) FOR [IS_RENAMED]
GO
ALTER TABLE [dbo].[Proj_Opr_Output]  WITH CHECK ADD  CONSTRAINT [Proj_Opr_Output_FK] FOREIGN KEY([VIEW_ID], [INPUT_RELVAR_ID])
REFERENCES [dbo].[Projection_Operator] ([VIEW_ID], [INPUT_RELVAR_ID])
GO
ALTER TABLE [dbo].[Proj_Opr_Output] CHECK CONSTRAINT [Proj_Opr_Output_FK]
GO
