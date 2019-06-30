USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ROUTERARPCACHE]    Script Date: 6/29/2019 5:51:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROUTERARPCACHE](
	[MAPID] [bigint] NOT NULL,
	[LEVEL] [int] NOT NULL,
	[DEVICEADDRESS] [varchar](50) NOT NULL,
	[IFINDEX] [int] NOT NULL,
	[IFNAME] [varchar](50) NOT NULL,
	[ENDPHYSADDRESS] [varchar](50) NOT NULL,
	[ENDNETADDRESS] [varchar](50) NOT NULL,
	[TYPE] [int] NOT NULL,
 CONSTRAINT [ROUTERARPCACHE_PK] PRIMARY KEY CLUSTERED 
(
	[MAPID] ASC,
	[DEVICEADDRESS] ASC,
	[ENDNETADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1659965672]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1659965672] ON [dbo].[ROUTERARPCACHE]
(
	[MAPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ROUTERARPCACHE]  WITH CHECK ADD  CONSTRAINT [ROUTERARPCACHE_FK] FOREIGN KEY([MAPID])
REFERENCES [dbo].[LAYER2CONFIGURATION] ([MAPID])
GO
ALTER TABLE [dbo].[ROUTERARPCACHE] CHECK CONSTRAINT [ROUTERARPCACHE_FK]
GO
