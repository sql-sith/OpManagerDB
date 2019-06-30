USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCM_UserAudit]    Script Date: 6/29/2019 5:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCM_UserAudit](
	[AUDITID] [bigint] NOT NULL,
	[NAME] [varchar](255) NULL,
	[OPERATEDBY] [varchar](255) NULL,
	[LOGINNAME] [varbinary](max) NULL,
	[USERNAME] [varchar](100) NULL,
	[LASTACCESSEDTIME] [datetime] NULL,
	[IPADDRESS] [varchar](255) NULL,
	[OPERATIONTYPE] [varchar](80) NULL,
	[REASON] [varchar](1000) NULL,
 CONSTRAINT [NCM_UserAudit_PK] PRIMARY KEY CLUSTERED 
(
	[AUDITID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
