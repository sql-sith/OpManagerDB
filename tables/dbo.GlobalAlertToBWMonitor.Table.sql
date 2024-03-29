USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GlobalAlertToBWMonitor]    Script Date: 6/29/2019 5:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalAlertToBWMonitor](
	[GLOBALID] [bigint] NOT NULL,
	[ALERTID] [bigint] NOT NULL,
 CONSTRAINT [GlobalAlertToBWMonitor_PK] PRIMARY KEY CLUSTERED 
(
	[GLOBALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__945010465]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__945010465] ON [dbo].[GlobalAlertToBWMonitor]
(
	[ALERTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__945010466]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__945010466] ON [dbo].[GlobalAlertToBWMonitor]
(
	[GLOBALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GlobalAlertToBWMonitor]  WITH CHECK ADD  CONSTRAINT [GlobalAlertToBWMonitor_FK1] FOREIGN KEY([GLOBALID])
REFERENCES [dbo].[GlobalAlertView] ([ID])
GO
ALTER TABLE [dbo].[GlobalAlertToBWMonitor] CHECK CONSTRAINT [GlobalAlertToBWMonitor_FK1]
GO
ALTER TABLE [dbo].[GlobalAlertToBWMonitor]  WITH CHECK ADD  CONSTRAINT [GlobalAlertToBWMonitor_FK2] FOREIGN KEY([ALERTID])
REFERENCES [dbo].[BWMonitorAlerts] ([ID])
GO
ALTER TABLE [dbo].[GlobalAlertToBWMonitor] CHECK CONSTRAINT [GlobalAlertToBWMonitor_FK2]
GO
