USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProcessTemplateAssociation]    Script Date: 6/29/2019 5:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessTemplateAssociation](
	[TID] [bigint] NOT NULL,
	[ID] [bigint] NOT NULL,
 CONSTRAINT [ProcessTemplateAssociation_PK] PRIMARY KEY CLUSTERED 
(
	[TID] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1440705498]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1440705498] ON [dbo].[ProcessTemplateAssociation]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1440705499]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1440705499] ON [dbo].[ProcessTemplateAssociation]
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProcessTemplateAssociation]  WITH CHECK ADD  CONSTRAINT [ProcessTemplateAssociation_FK1] FOREIGN KEY([TID])
REFERENCES [dbo].[ProcessTemplates] ([TID])
GO
ALTER TABLE [dbo].[ProcessTemplateAssociation] CHECK CONSTRAINT [ProcessTemplateAssociation_FK1]
GO
ALTER TABLE [dbo].[ProcessTemplateAssociation]  WITH CHECK ADD  CONSTRAINT [ProcessTemplateAssociation_FK2] FOREIGN KEY([ID])
REFERENCES [dbo].[ProcessDetails] ([ID])
GO
ALTER TABLE [dbo].[ProcessTemplateAssociation] CHECK CONSTRAINT [ProcessTemplateAssociation_FK2]
GO
