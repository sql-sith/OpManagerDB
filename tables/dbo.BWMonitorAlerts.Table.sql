USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BWMonitorAlerts]    Script Date: 6/29/2019 5:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BWMonitorAlerts](
	[ID] [bigint] NOT NULL,
	[IFID] [bigint] NOT NULL,
	[HOSTID] [bigint] NOT NULL,
	[TRAFFIC_TYPE] [int] NOT NULL,
	[ALERTTYPE] [int] NOT NULL,
	[ALERT_DATETIME] [datetime] NULL,
 CONSTRAINT [BWMonitorAlerts_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__961987702]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__961987702] ON [dbo].[BWMonitorAlerts]
(
	[HOSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__961987703]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__961987703] ON [dbo].[BWMonitorAlerts]
(
	[IFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BWMonitorAlerts]  WITH CHECK ADD  CONSTRAINT [BWMonitorAlerts_FK1] FOREIGN KEY([IFID])
REFERENCES [dbo].[BWInterfaces] ([ID])
GO
ALTER TABLE [dbo].[BWMonitorAlerts] CHECK CONSTRAINT [BWMonitorAlerts_FK1]
GO
ALTER TABLE [dbo].[BWMonitorAlerts]  WITH CHECK ADD  CONSTRAINT [BWMonitorAlerts_FK2] FOREIGN KEY([HOSTID])
REFERENCES [dbo].[BandWidthHost] ([ID])
GO
ALTER TABLE [dbo].[BWMonitorAlerts] CHECK CONSTRAINT [BWMonitorAlerts_FK2]
GO
