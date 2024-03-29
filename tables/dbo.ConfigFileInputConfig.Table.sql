USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConfigFileInputConfig]    Script Date: 6/29/2019 5:46:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigFileInputConfig](
	[DEVICEID] [bigint] NOT NULL,
	[IPADDRESS] [varchar](15) NOT NULL,
	[DNSNAME] [varchar](150) NULL,
	[COMMUNITY] [varchar](100) NOT NULL,
	[LASTUPDATETIME] [varchar](100) NOT NULL,
	[REMARKS] [varchar](500) NOT NULL,
	[REMARKS_I18NKEY] [varchar](200) NULL,
	[REMARKS_I18NARGS] [varchar](500) NULL,
	[STATUS] [int] NOT NULL,
	[OSTYPE] [int] NOT NULL,
	[TFTPSERVERIP] [varchar](15) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[SNMP_VERSION] [int] NOT NULL,
 CONSTRAINT [ConfigFileInputConfig_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConfigFileInputConfig] ADD  DEFAULT ('0') FOR [STATUS]
GO
ALTER TABLE [dbo].[ConfigFileInputConfig] ADD  DEFAULT ('0') FOR [OSTYPE]
GO
ALTER TABLE [dbo].[ConfigFileInputConfig] ADD  DEFAULT ('1') FOR [SNMP_VERSION]
GO
