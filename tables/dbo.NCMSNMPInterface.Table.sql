USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMSNMPInterface]    Script Date: 6/29/2019 5:49:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMSNMPInterface](
	[RESOURCEID] [bigint] NOT NULL,
	[IFINDEX] [int] NOT NULL,
	[PHYSADDR] [varchar](17) NULL,
	[IFSPEED] [bigint] NULL,
	[IFDESCR] [varchar](250) NOT NULL,
	[IFTYPE] [varchar](250) NOT NULL,
	[PORTNO] [int] NULL,
	[OPERATIONALSTATUS] [varchar](50) NOT NULL,
	[LASTCHANGETIME] [datetime] NULL,
	[IFNAME] [varchar](100) NOT NULL,
	[AVAILABILITY] [varchar](100) NOT NULL,
	[MULTIMACPORT] [bit] NOT NULL,
	[MULTIVLAN] [bit] NOT NULL,
	[ADMINSTATUS] [varchar](50) NOT NULL,
	[IFALIASNAME] [varchar](100) NULL,
 CONSTRAINT [NCMSNMPInterface_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC,
	[IFINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1392512304]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1392512304] ON [dbo].[NCMSNMPInterface]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('Not Resolved') FOR [PHYSADDR]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('No Data') FOR [IFDESCR]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('No Data') FOR [IFTYPE]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('[NA]') FOR [OPERATIONALSTATUS]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('NotDefined') FOR [IFNAME]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('[NA]') FOR [AVAILABILITY]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ((0)) FOR [MULTIMACPORT]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ((0)) FOR [MULTIVLAN]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('[NA]') FOR [ADMINSTATUS]
GO
ALTER TABLE [dbo].[NCMSNMPInterface] ADD  DEFAULT ('Not Defined') FOR [IFALIASNAME]
GO
ALTER TABLE [dbo].[NCMSNMPInterface]  WITH CHECK ADD  CONSTRAINT [NCMSNMPInterface_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMDevices] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMSNMPInterface] CHECK CONSTRAINT [NCMSNMPInterface_FK1]
GO
