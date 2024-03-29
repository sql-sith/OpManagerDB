USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AvayaERSSwitch]    Script Date: 6/29/2019 5:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvayaERSSwitch](
	[OperationMode] [varchar](30) NOT NULL,
	[SysUpTime] [varchar](30) NOT NULL,
	[SysNtpTime] [varchar](30) NOT NULL,
	[SysName] [varchar](30) NOT NULL,
	[SysLocation] [varchar](30) NOT NULL,
	[SystemDescription] [varchar](250) NOT NULL,
	[OperationalSoftware] [varchar](30) NOT NULL,
	[InstalledSoftware] [varchar](30) NOT NULL,
	[PowerStatus] [varchar](30) NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [AvayaERSSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_98251827]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_98251827] ON [dbo].[AvayaERSSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [OperationMode]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [SysUpTime]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [SysNtpTime]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [SysName]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [SysLocation]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [SystemDescription]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [OperationalSoftware]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [InstalledSoftware]
GO
ALTER TABLE [dbo].[AvayaERSSwitch] ADD  DEFAULT ('Not Available') FOR [PowerStatus]
GO
ALTER TABLE [dbo].[AvayaERSSwitch]  WITH CHECK ADD  CONSTRAINT [AvayaERSSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[AvayaERSSwitch] CHECK CONSTRAINT [AvayaERSSwitch_FK1]
GO
