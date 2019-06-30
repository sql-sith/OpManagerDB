USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMResourcesProtocolList]    Script Date: 6/29/2019 5:49:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMResourcesProtocolList](
	[RESOURCEID] [bigint] NOT NULL,
	[PROTOCOLID] [bigint] NOT NULL,
 CONSTRAINT [NCMResourcesProtocolList_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC,
	[PROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__797940335]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__797940335] ON [dbo].[NCMResourcesProtocolList]
(
	[PROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__797940336]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__797940336] ON [dbo].[NCMResourcesProtocolList]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMResourcesProtocolList]  WITH CHECK ADD  CONSTRAINT [NCMResourcesProtocolList_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResourcesInfo] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMResourcesProtocolList] CHECK CONSTRAINT [NCMResourcesProtocolList_FK1]
GO
ALTER TABLE [dbo].[NCMResourcesProtocolList]  WITH CHECK ADD  CONSTRAINT [NCMResourcesProtocolList_FK2] FOREIGN KEY([PROTOCOLID])
REFERENCES [dbo].[NCMProtocol] ([PROTOCOLID])
GO
ALTER TABLE [dbo].[NCMResourcesProtocolList] CHECK CONSTRAINT [NCMResourcesProtocolList_FK2]
GO
