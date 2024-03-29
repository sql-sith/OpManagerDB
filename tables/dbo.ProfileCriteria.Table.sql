USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProfileCriteria]    Script Date: 6/29/2019 5:50:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileCriteria](
	[CRITERIAID] [bigint] NOT NULL,
	[CRITERIANAME] [varchar](250) NOT NULL,
	[CRITERIADESCRIPTION] [varchar](250) NULL,
	[STATUSPOLL] [varchar](100) NOT NULL,
	[TRAP] [varchar](100) NOT NULL,
	[INTF] [varchar](100) NOT NULL,
	[SERVICE] [varchar](100) NOT NULL,
	[WINSERVICE] [varchar](100) NOT NULL,
	[EVENTLOG] [varchar](100) NOT NULL,
	[SYSLOG] [varchar](100) NOT NULL,
	[ADMONITOR] [varchar](100) NOT NULL,
	[EXCHANGEMONITOR] [varchar](100) NOT NULL,
	[MSSQLMONITOR] [varchar](100) NOT NULL,
	[ADSERVICE] [varchar](100) NOT NULL,
	[EXCHANGESERVICE] [varchar](100) NOT NULL,
	[MSSQLSERVICE] [varchar](100) NOT NULL,
	[THRESHOLD] [varchar](100) NOT NULL,
	[PROCESSMONITOR] [varchar](100) NOT NULL,
	[IPSLAMONITOR] [varchar](100) NOT NULL,
	[FILEMONITOR] [varchar](100) NOT NULL,
	[FOLDERMONITOR] [varchar](100) NOT NULL,
	[PRINTERMONITOR] [varchar](100) NOT NULL,
	[UPSMONITOR] [varchar](100) NOT NULL,
	[URL] [varchar](100) NOT NULL,
	[VIRTUALDEVICEMONITOR] [varchar](100) NOT NULL,
	[SCRIPTMONITOR] [varchar](100) NOT NULL,
	[PROBEDOWN] [varchar](100) NOT NULL,
	[CLEAR] [varchar](100) NOT NULL,
	[AGENTDOWN] [varchar](100) NOT NULL,
	[HARDWAREMONITOR] [varchar](100) NOT NULL,
	[NCMBACKUP] [varchar](100) NOT NULL,
	[NCMCONFIGCHANGES] [varchar](100) NOT NULL,
	[NFAALARM] [varchar](100) NOT NULL,
	[UCSFAULT] [varchar](100) NOT NULL,
	[STORAGEALARM] [varchar](100) NOT NULL,
	[BANDWIDTHEXCEEDED] [varchar](100) NOT NULL,
 CONSTRAINT [ProfileCriteria_PK1] PRIMARY KEY CLUSTERED 
(
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProfileCriteria] ADD  DEFAULT ('no') FOR [NCMBACKUP]
GO
ALTER TABLE [dbo].[ProfileCriteria] ADD  DEFAULT ('no') FOR [NCMCONFIGCHANGES]
GO
ALTER TABLE [dbo].[ProfileCriteria] ADD  DEFAULT ('no') FOR [NFAALARM]
GO
ALTER TABLE [dbo].[ProfileCriteria] ADD  DEFAULT ('no') FOR [STORAGEALARM]
GO
ALTER TABLE [dbo].[ProfileCriteria] ADD  DEFAULT ('no') FOR [BANDWIDTHEXCEEDED]
GO
