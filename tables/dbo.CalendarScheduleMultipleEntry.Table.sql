USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CalendarScheduleMultipleEntry]    Script Date: 6/29/2019 5:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarScheduleMultipleEntry](
	[ID] [bigint] NOT NULL,
	[SCHED_ITEM] [int] NOT NULL,
 CONSTRAINT [CalendarScheduleMultipleEntry_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[SCHED_ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__142622982]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__142622982] ON [dbo].[CalendarScheduleMultipleEntry]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalendarScheduleMultipleEntry]  WITH CHECK ADD  CONSTRAINT [CalendarScheduleMultipleEntry_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[NGBaseSchedule] ([ID])
GO
ALTER TABLE [dbo].[CalendarScheduleMultipleEntry] CHECK CONSTRAINT [CalendarScheduleMultipleEntry_FK1]
GO
