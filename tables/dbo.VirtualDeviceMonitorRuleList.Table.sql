USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VirtualDeviceMonitorRuleList]    Script Date: 6/29/2019 5:52:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VirtualDeviceMonitorRuleList](
	[ID] [bigint] NOT NULL,
	[CRITERIAID] [bigint] NOT NULL,
	[MONITORTYPE] [varchar](250) NOT NULL,
 CONSTRAINT [VirtualDeviceMonitorRuleList_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1701040224]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1701040224] ON [dbo].[VirtualDeviceMonitorRuleList]
(
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VirtualDeviceMonitorRuleList]  WITH CHECK ADD  CONSTRAINT [VirtualDeviceMonitorRuleList_FK1] FOREIGN KEY([CRITERIAID])
REFERENCES [dbo].[ProfileCriteria] ([CRITERIAID])
GO
ALTER TABLE [dbo].[VirtualDeviceMonitorRuleList] CHECK CONSTRAINT [VirtualDeviceMonitorRuleList_FK1]
GO
