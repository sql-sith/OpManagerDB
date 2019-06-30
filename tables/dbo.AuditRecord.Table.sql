USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AuditRecord]    Script Date: 6/29/2019 5:46:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditRecord](
	[AUDITID] [bigint] NOT NULL,
	[PRINCIPAL] [varchar](50) NOT NULL,
	[TIMESTAMP] [bigint] NOT NULL,
	[RECORDTYPE] [varchar](25) NOT NULL,
 CONSTRAINT [AuditRecord_PK] PRIMARY KEY CLUSTERED 
(
	[AUDITID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditRecord] ADD  DEFAULT ('OperationAuditRecord') FOR [RECORDTYPE]
GO
