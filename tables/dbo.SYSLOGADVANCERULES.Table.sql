USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SYSLOGADVANCERULES]    Script Date: 6/29/2019 5:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSLOGADVANCERULES](
	[RULEID] [bigint] NOT NULL,
	[CONSECUTIVETIME] [int] NOT NULL,
	[TIMEINTERVAL] [int] NOT NULL,
 CONSTRAINT [SYSLOGADVANCERULES_PK1] PRIMARY KEY CLUSTERED 
(
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_354132441]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_354132441] ON [dbo].[SYSLOGADVANCERULES]
(
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SYSLOGADVANCERULES] ADD  DEFAULT ('1') FOR [CONSECUTIVETIME]
GO
ALTER TABLE [dbo].[SYSLOGADVANCERULES] ADD  DEFAULT ('60') FOR [TIMEINTERVAL]
GO
ALTER TABLE [dbo].[SYSLOGADVANCERULES]  WITH CHECK ADD  CONSTRAINT [SYSLOGADVANCERULES_FK1] FOREIGN KEY([RULEID])
REFERENCES [dbo].[SYSLOGRULESLIST] ([RULEID])
GO
ALTER TABLE [dbo].[SYSLOGADVANCERULES] CHECK CONSTRAINT [SYSLOGADVANCERULES_FK1]
GO
