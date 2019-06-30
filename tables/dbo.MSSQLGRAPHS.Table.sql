USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MSSQLGRAPHS]    Script Date: 6/29/2019 5:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSSQLGRAPHS](
	[MONITORID] [bigint] NOT NULL,
	[GRAPHID] [bigint] NOT NULL,
	[AUTOADD] [bit] NOT NULL,
 CONSTRAINT [MSSQLGRAPHS_PK1] PRIMARY KEY CLUSTERED 
(
	[MONITORID] ASC,
	[GRAPHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__545229317]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__545229317] ON [dbo].[MSSQLGRAPHS]
(
	[MONITORID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__545229318]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__545229318] ON [dbo].[MSSQLGRAPHS]
(
	[GRAPHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSSQLGRAPHS] ADD  DEFAULT ((0)) FOR [AUTOADD]
GO
ALTER TABLE [dbo].[MSSQLGRAPHS]  WITH CHECK ADD  CONSTRAINT [MSSQLGRAPHS_FK1] FOREIGN KEY([GRAPHID])
REFERENCES [dbo].[GRAPHDETAILS] ([GRAPHID])
GO
ALTER TABLE [dbo].[MSSQLGRAPHS] CHECK CONSTRAINT [MSSQLGRAPHS_FK1]
GO
ALTER TABLE [dbo].[MSSQLGRAPHS]  WITH CHECK ADD  CONSTRAINT [MSSQLGRAPHS_FK2] FOREIGN KEY([MONITORID])
REFERENCES [dbo].[MONITORDETAILS] ([MONITORID])
GO
ALTER TABLE [dbo].[MSSQLGRAPHS] CHECK CONSTRAINT [MSSQLGRAPHS_FK2]
GO
