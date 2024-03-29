USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AuditTableConfig]    Script Date: 6/29/2019 5:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTableConfig](
	[AUDITCONFIG_ID] [bigint] NOT NULL,
	[AUDITTABLENAME] [varchar](50) NOT NULL,
	[BUFFERSIZE] [int] NULL,
	[BATCHSIZE] [int] NULL,
 CONSTRAINT [AuditTableConfig_PK] PRIMARY KEY CLUSTERED 
(
	[AUDITCONFIG_ID] ASC,
	[AUDITTABLENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1259656369]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1259656369] ON [dbo].[AuditTableConfig]
(
	[AUDITCONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditTableConfig]  WITH CHECK ADD  CONSTRAINT [AuditTableConfig_FK] FOREIGN KEY([AUDITCONFIG_ID])
REFERENCES [dbo].[AuditConfig] ([ID])
GO
ALTER TABLE [dbo].[AuditTableConfig] CHECK CONSTRAINT [AuditTableConfig_FK]
GO
