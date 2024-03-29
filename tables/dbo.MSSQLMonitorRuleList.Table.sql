USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MSSQLMonitorRuleList]    Script Date: 6/29/2019 5:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSSQLMonitorRuleList](
	[ID] [bigint] NOT NULL,
	[CRITERIAID] [bigint] NOT NULL,
	[POLLEDDATANAME] [varchar](250) NOT NULL,
 CONSTRAINT [MSSQLMonitorRuleList_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1072247015]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1072247015] ON [dbo].[MSSQLMonitorRuleList]
(
	[CRITERIAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSSQLMonitorRuleList]  WITH CHECK ADD  CONSTRAINT [MSSQLMonitorRuleList_FK1] FOREIGN KEY([CRITERIAID])
REFERENCES [dbo].[ProfileCriteria] ([CRITERIAID])
GO
ALTER TABLE [dbo].[MSSQLMonitorRuleList] CHECK CONSTRAINT [MSSQLMonitorRuleList_FK1]
GO
