USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCMSendSyslogActionInfo]    Script Date: 6/29/2019 5:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCMSendSyslogActionInfo](
	[RULE_ID] [bigint] NOT NULL,
	[ACTION_ID] [int] NOT NULL,
	[HOST_IP] [varchar](50) NOT NULL,
	[PORT] [int] NOT NULL,
 CONSTRAINT [NCMCMSendSyslogActionInfo_PK] PRIMARY KEY CLUSTERED 
(
	[RULE_ID] ASC,
	[ACTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_970652658]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_970652658] ON [dbo].[NCMCMSendSyslogActionInfo]
(
	[RULE_ID] ASC,
	[ACTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCMSendSyslogActionInfo]  WITH CHECK ADD  CONSTRAINT [NCMCMSendSyslogActionInfo_FK1] FOREIGN KEY([RULE_ID], [ACTION_ID])
REFERENCES [dbo].[NCMCMActions] ([RULE_ID], [ACTION_ID])
GO
ALTER TABLE [dbo].[NCMCMSendSyslogActionInfo] CHECK CONSTRAINT [NCMCMSendSyslogActionInfo_FK1]
GO
