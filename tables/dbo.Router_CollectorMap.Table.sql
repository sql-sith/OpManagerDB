USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Router_CollectorMap]    Script Date: 6/29/2019 5:51:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Router_CollectorMap](
	[ROUTER_ID] [int] NOT NULL,
	[COLLECTOR_ID] [int] NOT NULL,
 CONSTRAINT [Router_CollectorMap_PK] PRIMARY KEY CLUSTERED 
(
	[ROUTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1017504878]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1017504878] ON [dbo].[Router_CollectorMap]
(
	[COLLECTOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1556843393]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1556843393] ON [dbo].[Router_CollectorMap]
(
	[ROUTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Router_CollectorMap] ADD  DEFAULT ('0') FOR [ROUTER_ID]
GO
ALTER TABLE [dbo].[Router_CollectorMap] ADD  DEFAULT ('0') FOR [COLLECTOR_ID]
GO
ALTER TABLE [dbo].[Router_CollectorMap]  WITH CHECK ADD  CONSTRAINT [Router_CollectorMap_FK] FOREIGN KEY([ROUTER_ID])
REFERENCES [dbo].[NetFlow_Router] ([ROUTER_ID])
GO
ALTER TABLE [dbo].[Router_CollectorMap] CHECK CONSTRAINT [Router_CollectorMap_FK]
GO
ALTER TABLE [dbo].[Router_CollectorMap]  WITH CHECK ADD  CONSTRAINT [Router_CollectorMap_FK1] FOREIGN KEY([COLLECTOR_ID])
REFERENCES [dbo].[Collector_Properties] ([COLLECTOR_ID])
GO
ALTER TABLE [dbo].[Router_CollectorMap] CHECK CONSTRAINT [Router_CollectorMap_FK1]
GO
