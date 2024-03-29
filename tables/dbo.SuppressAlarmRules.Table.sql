USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SuppressAlarmRules]    Script Date: 6/29/2019 5:52:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppressAlarmRules](
	[MOID] [bigint] NOT NULL,
	[STARTTIME] [bigint] NOT NULL,
	[ENDTIME] [bigint] NOT NULL,
 CONSTRAINT [MOID_PK1] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_306383626]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_306383626] ON [dbo].[SuppressAlarmRules]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SuppressAlarmRules]  WITH CHECK ADD  CONSTRAINT [MOID_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[SuppressAlarmRules] CHECK CONSTRAINT [MOID_FK1]
GO
