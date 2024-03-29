USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduleBusinessViews]    Script Date: 6/29/2019 5:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleBusinessViews](
	[SCHEDULEID] [bigint] NOT NULL,
	[BUSINESSVIEWNAME] [varchar](250) NOT NULL,
 CONSTRAINT [ScheduleBusinessViews_PK1] PRIMARY KEY CLUSTERED 
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__970114844]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__970114844] ON [dbo].[ScheduleBusinessViews]
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduleBusinessViews]  WITH CHECK ADD  CONSTRAINT [ScheduleBusinessViews_FK1] FOREIGN KEY([SCHEDULEID])
REFERENCES [dbo].[ScheduleReports] ([SCHEDULEID])
GO
ALTER TABLE [dbo].[ScheduleBusinessViews] CHECK CONSTRAINT [ScheduleBusinessViews_FK1]
GO
