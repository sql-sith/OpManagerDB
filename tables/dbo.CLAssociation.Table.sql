USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLAssociation]    Script Date: 6/29/2019 5:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLAssociation](
	[LINKID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
 CONSTRAINT [CLAssociation_PK1] PRIMARY KEY CLUSTERED 
(
	[LINKID] ASC,
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1385604005]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1385604005] ON [dbo].[CLAssociation]
(
	[LINKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1385604006]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1385604006] ON [dbo].[CLAssociation]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLAssociation]  WITH CHECK ADD  CONSTRAINT [CLAssociation_FK1] FOREIGN KEY([LINKID])
REFERENCES [dbo].[CustomLinks] ([LINKID])
GO
ALTER TABLE [dbo].[CLAssociation] CHECK CONSTRAINT [CLAssociation_FK1]
GO
ALTER TABLE [dbo].[CLAssociation]  WITH CHECK ADD  CONSTRAINT [CLAssociation_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[CLAssociation] CHECK CONSTRAINT [CLAssociation_FK2]
GO
