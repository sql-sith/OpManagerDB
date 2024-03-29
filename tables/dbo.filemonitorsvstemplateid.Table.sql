USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[filemonitorsvstemplateid]    Script Date: 6/29/2019 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filemonitorsvstemplateid](
	[monitorId] [bigint] NOT NULL,
	[templateId] [bigint] NOT NULL,
 CONSTRAINT [filemonitorsvstemplateid_PK] PRIMARY KEY CLUSTERED 
(
	[monitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__697258571]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__697258571] ON [dbo].[filemonitorsvstemplateid]
(
	[templateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__697258572]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__697258572] ON [dbo].[filemonitorsvstemplateid]
(
	[monitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[filemonitorsvstemplateid]  WITH CHECK ADD  CONSTRAINT [filemonitorsvstemplateid_FK1] FOREIGN KEY([monitorId])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[filemonitorsvstemplateid] CHECK CONSTRAINT [filemonitorsvstemplateid_FK1]
GO
ALTER TABLE [dbo].[filemonitorsvstemplateid]  WITH CHECK ADD  CONSTRAINT [filemonitorsvstemplateid_FK2] FOREIGN KEY([templateId])
REFERENCES [dbo].[filemonitortemplates] ([filefoldermonitorid])
GO
ALTER TABLE [dbo].[filemonitorsvstemplateid] CHECK CONSTRAINT [filemonitorsvstemplateid_FK2]
GO
