USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScanToolsResult]    Script Date: 6/29/2019 5:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScanToolsResult](
	[RESULT_ID] [bigint] NOT NULL,
	[IPADDRESS] [varchar](15) NOT NULL,
	[IPADDRINLONG] [bigint] NOT NULL,
	[RESPONSETIME] [varchar](25) NULL,
	[PING_STATUS] [int] NOT NULL,
	[SNMP_RESPONSETIME] [varchar](25) NULL,
	[SNMP_STATUS] [int] NOT NULL,
	[OSID] [bigint] NULL,
	[MACADDRESS] [varchar](30) NULL,
	[OUI] [varchar](8) NULL,
	[MAC_RESPONSE_STATUS] [int] NOT NULL,
	[MAC_RESPONSETIME] [varchar](25) NULL,
	[FORWARD_DNS_LOOKUP] [varchar](50) NULL,
	[REVERSE_DNS_LOOKUP] [varchar](50) NULL,
	[DNS_STATUS] [int] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
 CONSTRAINT [ScanToolsResult_PK] PRIMARY KEY CLUSTERED 
(
	[RESULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ScanToolsResult_UK] UNIQUE NONCLUSTERED 
(
	[IPADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2006827145]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2006827145] ON [dbo].[ScanToolsResult]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScanToolsResult] ADD  DEFAULT ('opu.ping.NOT_YET_SCANNED') FOR [MACADDRESS]
GO
ALTER TABLE [dbo].[ScanToolsResult] ADD  DEFAULT ('opu.ping.NOT_YET_SCANNED') FOR [FORWARD_DNS_LOOKUP]
GO
ALTER TABLE [dbo].[ScanToolsResult] ADD  DEFAULT ('opu.ping.NOT_YET_SCANNED') FOR [REVERSE_DNS_LOOKUP]
GO
ALTER TABLE [dbo].[ScanToolsResult]  WITH CHECK ADD  CONSTRAINT [ScanToolsResult_FK] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[ScanToolsResult] CHECK CONSTRAINT [ScanToolsResult_FK]
GO
