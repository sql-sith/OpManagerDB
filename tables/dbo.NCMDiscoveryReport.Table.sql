USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDiscoveryReport]    Script Date: 6/29/2019 5:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDiscoveryReport](
	[REPORTID] [bigint] NOT NULL,
	[PROFILEID] [bigint] NULL,
	[IPADDRESS] [varchar](20) NOT NULL,
	[SERIES] [varchar](100) NOT NULL,
	[MODEL] [varchar](50) NOT NULL,
	[TEMPLATENAME] [varchar](100) NOT NULL,
	[SYSOID] [varchar](100) NOT NULL,
	[MONAME] [varchar](100) NOT NULL,
	[STATUS] [varchar](30) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
 CONSTRAINT [NCMDiscoveryReport_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMDiscoveryReport] ADD  DEFAULT ('[NA]') FOR [SERIES]
GO
ALTER TABLE [dbo].[NCMDiscoveryReport] ADD  DEFAULT ('[NA]') FOR [MODEL]
GO
ALTER TABLE [dbo].[NCMDiscoveryReport] ADD  DEFAULT ('[NA]') FOR [TEMPLATENAME]
GO
ALTER TABLE [dbo].[NCMDiscoveryReport] ADD  DEFAULT ('[NA]') FOR [SYSOID]
GO
ALTER TABLE [dbo].[NCMDiscoveryReport] ADD  DEFAULT ('[NA]') FOR [MONAME]
GO
