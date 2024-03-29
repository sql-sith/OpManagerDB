USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FirewallRecords]    Script Date: 6/29/2019 5:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirewallRecords](
	[LRID] [bigint] NOT NULL,
	[RESOURCE] [nvarchar](90) NOT NULL,
	[LOG_FORMAT] [nvarchar](30) NULL,
	[FW_TYPE] [nvarchar](50) NULL,
	[USER] [nvarchar](96) NOT NULL,
	[TIME] [datetime] NOT NULL,
	[PROTOCOL] [nvarchar](30) NULL,
	[LEARNME] [nvarchar](50) NULL,
	[PRI] [nvarchar](12) NULL,
	[TYPE] [nvarchar](10) NULL,
	[SUBTYPE] [nvarchar](48) NULL,
	[SRC] [nvarchar](96) NULL,
	[SRCNAME] [nvarchar](96) NOT NULL,
	[SRC_PORT] [int] NULL,
	[DST] [nvarchar](96) NULL,
	[DSTNAME] [nvarchar](96) NOT NULL,
	[DST_PORT] [int] NULL,
	[DURATION] [bigint] NULL,
	[REQUEST] [nvarchar](4000) NULL,
	[OP] [nvarchar](8) NULL,
	[STATUS] [nvarchar](48) NULL,
	[FILENAME] [nvarchar](250) NULL,
	[SENT] [bigint] NULL,
	[RCVD] [bigint] NULL,
	[SRC_INT] [bigint] NULL,
	[DST_INT] [bigint] NULL,
	[HTTPSTATUS] [bigint] NULL,
	[RULE] [nvarchar](90) NULL,
	[EVENT_CODE] [int] NOT NULL,
	[EVENT_TYPE] [int] NULL,
	[MSG] [nvarchar](1) NULL,
	[VPN] [nvarchar](96) NULL,
	[GATEWAY] [nvarchar](96) NULL,
	[VIRUS] [nvarchar](96) NULL,
	[CATEGORY] [nvarchar](100) NULL,
	[POLICY_ID] [nvarchar](96) NULL,
	[SRC_ID] [bigint] NOT NULL,
	[DST_ID] [bigint] NOT NULL,
	[TRAN_IP] [nvarchar](96) NULL,
	[TRAN_PORT] [nvarchar](96) NULL,
	[PIX_LOG_ID] [nvarchar](40) NULL,
	[STARTTIME] [bigint] NULL,
	[FROM_EMAIL] [nvarchar](150) NULL,
	[TO_EMAIL] [varchar](600) NULL,
	[MAIL_SUBJECT] [nvarchar](4000) NULL,
	[GROUP_VPN] [nvarchar](150) NULL,
	[SRC_CNTRYID] [int] NULL,
	[DST_CNTRYID] [int] NULL,
	[CLOUD_NAME] [nvarchar](96) NULL,
	[CLOUD_CAT] [nvarchar](96) NULL,
PRIMARY KEY CLUSTERED 
(
	[LRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Firewall_STARTTIME]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Firewall_STARTTIME] ON [dbo].[FirewallRecords]
(
	[STARTTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Firewall_TIME]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Firewall_TIME] ON [dbo].[FirewallRecords]
(
	[TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [LRID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('') FOR [RESOURCE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [LOG_FORMAT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [FW_TYPE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('-') FOR [USER]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [TIME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [PROTOCOL]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [LEARNME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [PRI]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [TYPE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [SUBTYPE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [SRC]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('-') FOR [SRCNAME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [SRC_PORT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [DST]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('-') FOR [DSTNAME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [DST_PORT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [DURATION]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [OP]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [STATUS]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [FILENAME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [SENT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [RCVD]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [SRC_INT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [DST_INT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [HTTPSTATUS]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [RULE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [EVENT_CODE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [EVENT_TYPE]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [VPN]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [GATEWAY]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [VIRUS]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [CATEGORY]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [POLICY_ID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ((0)) FOR [SRC_ID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ((0)) FOR [DST_ID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [TRAN_IP]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [TRAN_PORT]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [PIX_LOG_ID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT ('0') FOR [STARTTIME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [FROM_EMAIL]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [TO_EMAIL]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [GROUP_VPN]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [SRC_CNTRYID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [DST_CNTRYID]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [CLOUD_NAME]
GO
ALTER TABLE [dbo].[FirewallRecords] ADD  DEFAULT (NULL) FOR [CLOUD_CAT]
GO
