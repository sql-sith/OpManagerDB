USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SPMInputConfig]    Script Date: 6/29/2019 5:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPMInputConfig](
	[CONFIG_ID] [bigint] NOT NULL,
	[SWITCH_ID] [bigint] NOT NULL,
	[SWITCHNAME] [varchar](150) NOT NULL,
	[SWITCH_COMMUNITY] [varchar](100) NOT NULL,
	[ROUTERNAME] [varchar](150) NULL,
	[ROUTER_COMMUNITY] [varchar](50) NULL,
	[STATUS] [int] NOT NULL,
	[LAST_SCAN_TIME] [datetime] NOT NULL,
	[TASK_ID] [bigint] NOT NULL,
	[WRITE_COMMUNITY] [varchar](50) NULL,
	[OWNER] [varchar](100) NOT NULL,
	[SNMPSWEEPENABLED] [int] NOT NULL,
	[SYSDETAILS] [int] NOT NULL,
	[SNMP_VERSION] [int] NOT NULL,
	[FORCETENFLAG] [int] NOT NULL,
	[ARPDETAILS] [int] NOT NULL,
	[SNMP_SCAN_TYPE] [int] NOT NULL,
	[REMARKS] [varchar](200) NOT NULL,
	[REMARKS_I18NKEY] [varchar](200) NULL,
	[REMARKS_I18NARGS] [varchar](400) NULL,
 CONSTRAINT [SPMInputConfig_PK] PRIMARY KEY CLUSTERED 
(
	[CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__214497304]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__214497304] ON [dbo].[SPMInputConfig]
(
	[SWITCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('1') FOR [STATUS]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('1') FOR [TASK_ID]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('admin') FOR [OWNER]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('0') FOR [SNMPSWEEPENABLED]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('1') FOR [SYSDETAILS]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('0') FOR [SNMP_VERSION]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('1') FOR [FORCETENFLAG]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('1') FOR [ARPDETAILS]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('1') FOR [SNMP_SCAN_TYPE]
GO
ALTER TABLE [dbo].[SPMInputConfig] ADD  DEFAULT ('  ') FOR [REMARKS]
GO
ALTER TABLE [dbo].[SPMInputConfig]  WITH CHECK ADD  CONSTRAINT [SPMInputConfig_FK] FOREIGN KEY([SWITCH_ID])
REFERENCES [dbo].[OpUtilsResources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[SPMInputConfig] CHECK CONSTRAINT [SPMInputConfig_FK]
GO
