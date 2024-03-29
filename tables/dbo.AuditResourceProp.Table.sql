USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AuditResourceProp]    Script Date: 6/29/2019 5:46:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditResourceProp](
	[AUDITID] [bigint] NOT NULL,
	[PROPERTYNAME] [varchar](100) NOT NULL,
	[PROPERTYVALUE] [varchar](250) NOT NULL,
 CONSTRAINT [AuditResourceProp_PK] PRIMARY KEY CLUSTERED 
(
	[AUDITID] ASC,
	[PROPERTYNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1145736712]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1145736712] ON [dbo].[AuditResourceProp]
(
	[AUDITID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditResourceProp]  WITH CHECK ADD  CONSTRAINT [AuditResourceProp_FK] FOREIGN KEY([AUDITID])
REFERENCES [dbo].[OperationAuditRecord] ([AUDITID])
GO
ALTER TABLE [dbo].[AuditResourceProp] CHECK CONSTRAINT [AuditResourceProp_FK]
GO
