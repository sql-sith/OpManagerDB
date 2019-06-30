USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduleTimings]    Script Date: 6/29/2019 5:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTimings](
	[PROBEGROUP_ID] [bigint] NOT NULL,
	[ENDTIME_ID] [int] NOT NULL,
	[STARTTIME] [bigint] NOT NULL,
 CONSTRAINT [ScheduleTimings_PK] PRIMARY KEY CLUSTERED 
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1384078081]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1384078081] ON [dbo].[ScheduleTimings]
(
	[ENDTIME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__460289678]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__460289678] ON [dbo].[ScheduleTimings]
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduleTimings]  WITH CHECK ADD  CONSTRAINT [ScheduleTimings_FK] FOREIGN KEY([PROBEGROUP_ID])
REFERENCES [dbo].[Collector] ([PROBEGROUP_ID])
GO
ALTER TABLE [dbo].[ScheduleTimings] CHECK CONSTRAINT [ScheduleTimings_FK]
GO
ALTER TABLE [dbo].[ScheduleTimings]  WITH CHECK ADD  CONSTRAINT [ScheduleTimings_FK1] FOREIGN KEY([ENDTIME_ID])
REFERENCES [dbo].[EndTimeType] ([ENDTIME_ID])
GO
ALTER TABLE [dbo].[ScheduleTimings] CHECK CONSTRAINT [ScheduleTimings_FK1]
GO
