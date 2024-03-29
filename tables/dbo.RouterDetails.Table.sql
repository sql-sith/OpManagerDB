USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RouterDetails]    Script Date: 6/29/2019 5:51:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouterDetails](
	[ID] [bigint] NOT NULL,
	[ROUTERNAME] [varchar](150) NOT NULL,
	[IPADDRESS] [varchar](15) NOT NULL,
	[COMMUNITY] [varchar](100) NOT NULL,
	[LASTUPDATETIME] [datetime] NOT NULL,
	[OWNER] [varchar](100) NOT NULL,
	[CLIOPTION] [int] NOT NULL,
	[STATUS] [int] NOT NULL,
	[REMARKS] [varchar](250) NOT NULL,
	[REMARKS_I18NKEY] [varchar](250) NULL,
	[REMARKS_I18NARGS] [varchar](400) NULL,
	[SNMP_VERSION] [int] NOT NULL,
	[CREDENTIALID] [bigint] NULL,
 CONSTRAINT [RouterDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RouterDetails] ADD  DEFAULT ('admin') FOR [OWNER]
GO
ALTER TABLE [dbo].[RouterDetails] ADD  DEFAULT ('0') FOR [CLIOPTION]
GO
ALTER TABLE [dbo].[RouterDetails] ADD  DEFAULT ('1') FOR [STATUS]
GO
ALTER TABLE [dbo].[RouterDetails] ADD  DEFAULT ('  ') FOR [REMARKS]
GO
ALTER TABLE [dbo].[RouterDetails] ADD  DEFAULT ('1') FOR [SNMP_VERSION]
GO
