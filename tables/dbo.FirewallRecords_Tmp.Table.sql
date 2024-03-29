USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FirewallRecords_Tmp]    Script Date: 6/29/2019 5:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirewallRecords_Tmp](
	[TIME] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[SRC_ID] [bigint] NOT NULL,
	[SRC] [nvarchar](96) NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NOT NULL,
	[DEST_ID] [bigint] NOT NULL,
	[DEST] [nvarchar](96) NOT NULL,
	[EVENT_TYPE] [int] NULL,
	[PROTOCOL_ID] [bigint] NOT NULL,
	[PROTOCOL] [nvarchar](30) NOT NULL,
	[REQUEST] [nvarchar](4000) NULL,
	[LRID] [bigint] NOT NULL,
	[DURATION] [int] NULL,
	[RCVD] [bigint] NULL,
	[SENT] [bigint] NULL,
	[PRIORITY_ID] [bigint] NOT NULL,
	[VIRUS] [nvarchar](96) NULL,
	[FILENAME] [nvarchar](250) NULL,
	[LEARNME] [nvarchar](50) NULL,
	[SUBTYPE] [nvarchar](48) NULL,
	[STATUS] [nvarchar](48) NULL,
	[MSG] [nvarchar](1) NULL,
	[TYPE] [nvarchar](20) NULL,
	[RULE] [nvarchar](90) NULL,
	[SRC_INT] [nvarchar](20) NULL,
	[TRAN_IP] [nvarchar](96) NULL,
	[GATEWAY] [nvarchar](96) NULL,
	[VPN] [nvarchar](96) NULL,
	[DST_PORT] [int] NULL,
	[EVENT_CODE] [int] NOT NULL,
	[TRAN_PORT] [nvarchar](96) NULL,
	[POLICY_ID] [nvarchar](96) NULL,
	[SENT_PKT] [bigint] NULL,
	[RCVD_PKT] [bigint] NULL,
	[FROM_EMAIL] [nvarchar](150) NULL,
	[TO_EMAIL] [varchar](600) NULL,
	[MAIL_SUBJECT] [nvarchar](1000) NULL,
	[CATEGORY_NAME] [nvarchar](100) NULL,
	[GROUP_VPN] [nvarchar](150) NULL,
	[SRC_CNTRYID] [int] NULL,
	[DST_CNTRYID] [int] NULL,
	[CLOUD_NAME] [nvarchar](96) NULL,
	[CLOUD_CAT] [nvarchar](96) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [TIME]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [EVENT_TYPE]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [REQUEST]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('0') FOR [DURATION]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('0') FOR [RCVD]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('0') FOR [SENT]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [VIRUS]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [FILENAME]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [LEARNME]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [SUBTYPE]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [STATUS]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [TYPE]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [RULE]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [SRC_INT]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [TRAN_IP]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [GATEWAY]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [VPN]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [DST_PORT]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('0') FOR [EVENT_CODE]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [TRAN_PORT]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [POLICY_ID]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('0') FOR [SENT_PKT]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT ('0') FOR [RCVD_PKT]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [FROM_EMAIL]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [TO_EMAIL]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [CATEGORY_NAME]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [GROUP_VPN]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [SRC_CNTRYID]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [DST_CNTRYID]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [CLOUD_NAME]
GO
ALTER TABLE [dbo].[FirewallRecords_Tmp] ADD  DEFAULT (NULL) FOR [CLOUD_CAT]
GO
