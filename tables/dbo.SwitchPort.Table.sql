USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SwitchPort]    Script Date: 6/29/2019 5:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SwitchPort](
	[RESOURCEID] [bigint] NOT NULL,
	[IFINDEX] [int] NOT NULL,
	[PORTNO] [int] NULL,
	[OPERATIONALSTATUS] [int] NOT NULL,
	[LAST_CHANGE_TIME] [datetime] NULL,
	[IFNAME] [varchar](250) NOT NULL,
	[AVAILABILITY] [int] NOT NULL,
	[MULTIMACPORT] [int] NOT NULL,
	[LOCATION] [varchar](100) NULL,
	[ADMINSTATUS] [int] NOT NULL,
	[IFALIASNAME] [varchar](100) NULL,
	[STATUS] [int] NOT NULL,
	[PORT_STATUS_CHANGED_TIME] [datetime] NULL,
	[INITIAL_ALERT_GENERATED] [bit] NOT NULL,
 CONSTRAINT [SwitchPort_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC,
	[IFINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1664408894]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1664408894] ON [dbo].[SwitchPort]
(
	[RESOURCEID] ASC,
	[IFINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SwitchPort_IDX_1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [SwitchPort_IDX_1] ON [dbo].[SwitchPort]
(
	[LOCATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ('4') FOR [OPERATIONALSTATUS]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ('NotDefined') FOR [IFNAME]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ('1') FOR [AVAILABILITY]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ('0') FOR [MULTIMACPORT]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ('4') FOR [ADMINSTATUS]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ('1') FOR [STATUS]
GO
ALTER TABLE [dbo].[SwitchPort] ADD  DEFAULT ((0)) FOR [INITIAL_ALERT_GENERATED]
GO
ALTER TABLE [dbo].[SwitchPort]  WITH CHECK ADD  CONSTRAINT [SwitchPort_FK1] FOREIGN KEY([RESOURCEID], [IFINDEX])
REFERENCES [dbo].[OpUtilsSNMPInterface] ([RESOURCEID], [IFINDEX])
GO
ALTER TABLE [dbo].[SwitchPort] CHECK CONSTRAINT [SwitchPort_FK1]
GO
