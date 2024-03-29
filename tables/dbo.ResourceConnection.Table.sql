USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ResourceConnection]    Script Date: 6/29/2019 5:50:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceConnection](
	[RESOURCEID] [bigint] NOT NULL,
	[CONNECTIONSPECID] [varchar](250) NOT NULL,
 CONSTRAINT [ResourceConnection_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC,
	[CONNECTIONSPECID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__888263942]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__888263942] ON [dbo].[ResourceConnection]
(
	[CONNECTIONSPECID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__888263943]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__888263943] ON [dbo].[ResourceConnection]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResourceConnection]  WITH CHECK ADD  CONSTRAINT [ResourceConnection_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMDevices] ([RESOURCEID])
GO
ALTER TABLE [dbo].[ResourceConnection] CHECK CONSTRAINT [ResourceConnection_FK1]
GO
ALTER TABLE [dbo].[ResourceConnection]  WITH CHECK ADD  CONSTRAINT [ResourceConnection_FK2] FOREIGN KEY([CONNECTIONSPECID])
REFERENCES [dbo].[ConnectionSpec] ([ConnectionID])
GO
ALTER TABLE [dbo].[ResourceConnection] CHECK CONSTRAINT [ResourceConnection_FK2]
GO
