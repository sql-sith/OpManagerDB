USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPAddressManagerAlerts]    Script Date: 6/29/2019 5:48:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPAddressManagerAlerts](
	[ALERTID] [bigint] NOT NULL,
	[RESOURCEID] [bigint] NULL,
	[STATUS] [int] NOT NULL,
	[LASTCHANGETIME] [datetime] NOT NULL,
	[TYPE] [int] NOT NULL,
	[ADDRINLONG] [bigint] NULL,
	[DNSNAME] [varchar](150) NULL,
	[FORWORD_ADDRINLONG] [bigint] NULL,
 CONSTRAINT [IPAddressManagerAlerts_PK] PRIMARY KEY CLUSTERED 
(
	[ALERTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IPAddressManagerAlerts_IDX_1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IPAddressManagerAlerts_IDX_1] ON [dbo].[IPAddressManagerAlerts]
(
	[ADDRINLONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPAddressManagerAlerts] ADD  DEFAULT ('0') FOR [RESOURCEID]
GO
ALTER TABLE [dbo].[IPAddressManagerAlerts] ADD  DEFAULT ('1') FOR [STATUS]
GO
ALTER TABLE [dbo].[IPAddressManagerAlerts] ADD  DEFAULT ('1') FOR [TYPE]
GO
