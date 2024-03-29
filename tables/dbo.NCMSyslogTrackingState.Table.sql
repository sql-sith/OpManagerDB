USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMSyslogTrackingState]    Script Date: 6/29/2019 5:49:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMSyslogTrackingState](
	[RESOURCEID] [bigint] NOT NULL,
	[STATE] [varchar](15) NOT NULL,
 CONSTRAINT [NCMSyslogTrackingState_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1537564296]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1537564296] ON [dbo].[NCMSyslogTrackingState]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMSyslogTrackingState] ADD  DEFAULT ('Disabled') FOR [STATE]
GO
ALTER TABLE [dbo].[NCMSyslogTrackingState]  WITH CHECK ADD  CONSTRAINT [NCMSyslogTrackingState_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMDevices] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMSyslogTrackingState] CHECK CONSTRAINT [NCMSyslogTrackingState_FK1]
GO
