USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OperationAuditRecord]    Script Date: 6/29/2019 5:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationAuditRecord](
	[AUDITID] [bigint] NOT NULL,
	[HOSTNAME] [varchar](50) NOT NULL,
	[RESOURCENAME] [varchar](50) NOT NULL,
	[OPERATIONNAME] [varchar](50) NOT NULL,
	[STARTTIME] [bigint] NULL,
	[COMPLETIONTIME] [bigint] NOT NULL,
	[RESULT] [varchar](50) NOT NULL,
	[SEVERITY] [varchar](25) NULL,
 CONSTRAINT [OperationAuditRecord_PK] PRIMARY KEY CLUSTERED 
(
	[AUDITID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_812414719]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_812414719] ON [dbo].[OperationAuditRecord]
(
	[AUDITID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OperationAuditRecord]  WITH CHECK ADD  CONSTRAINT [OperationAuditRecord_FK] FOREIGN KEY([AUDITID])
REFERENCES [dbo].[AuditRecord] ([AUDITID])
GO
ALTER TABLE [dbo].[OperationAuditRecord] CHECK CONSTRAINT [OperationAuditRecord_FK]
GO
