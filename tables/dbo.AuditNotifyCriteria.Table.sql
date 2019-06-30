USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AuditNotifyCriteria]    Script Date: 6/29/2019 5:46:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditNotifyCriteria](
	[AUDITCONFIG_ID] [bigint] NOT NULL,
	[CRITERIA] [varchar](188) NOT NULL,
	[REPEATCOUNT] [int] NULL,
	[REPEATINTERVAL] [bigint] NOT NULL,
 CONSTRAINT [AuditNotifyCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[AUDITCONFIG_ID] ASC,
	[CRITERIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AuditNotifyCriteria_UK0] UNIQUE NONCLUSTERED 
(
	[REPEATINTERVAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2070063071]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2070063071] ON [dbo].[AuditNotifyCriteria]
(
	[AUDITCONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditNotifyCriteria]  WITH CHECK ADD  CONSTRAINT [AuditNotifyCriteria_FK] FOREIGN KEY([AUDITCONFIG_ID])
REFERENCES [dbo].[AuditConfig] ([ID])
GO
ALTER TABLE [dbo].[AuditNotifyCriteria] CHECK CONSTRAINT [AuditNotifyCriteria_FK]
GO
