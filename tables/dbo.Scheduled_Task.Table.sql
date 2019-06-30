USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Scheduled_Task]    Script Date: 6/29/2019 5:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduled_Task](
	[SCHEDULE_ID] [bigint] NOT NULL,
	[TASK_ID] [bigint] NOT NULL,
	[OFFSET_MS] [int] NOT NULL,
	[SCHEDULE_MODE] [int] NOT NULL,
	[ADMIN_STATUS] [int] NOT NULL,
	[AUDIT_FLAG] [bit] NOT NULL,
	[TRANSACTION_TIME] [int] NOT NULL,
	[RETRY_SCHEDULE_ID] [bigint] NULL,
	[SKIP_MISSED_SCHEDULE] [bit] NOT NULL,
	[REMOVE_ON_EXPIRY] [bit] NOT NULL,
	[RETRY_HANDLER] [varchar](250) NULL,
 CONSTRAINT [ScheduledTask_PK] PRIMARY KEY CLUSTERED 
(
	[SCHEDULE_ID] ASC,
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1222929919]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1222929919] ON [dbo].[Scheduled_Task]
(
	[RETRY_SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1222929920]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1222929920] ON [dbo].[Scheduled_Task]
(
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1222929921]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1222929921] ON [dbo].[Scheduled_Task]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ('100') FOR [OFFSET_MS]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ('2') FOR [SCHEDULE_MODE]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ('3') FOR [ADMIN_STATUS]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ((0)) FOR [AUDIT_FLAG]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ('0') FOR [TRANSACTION_TIME]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ((0)) FOR [SKIP_MISSED_SCHEDULE]
GO
ALTER TABLE [dbo].[Scheduled_Task] ADD  DEFAULT ((0)) FOR [REMOVE_ON_EXPIRY]
GO
ALTER TABLE [dbo].[Scheduled_Task]  WITH CHECK ADD  CONSTRAINT [ScheduledTask_FK1] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[Scheduled_Task] CHECK CONSTRAINT [ScheduledTask_FK1]
GO
ALTER TABLE [dbo].[Scheduled_Task]  WITH CHECK ADD  CONSTRAINT [ScheduledTask_FK2] FOREIGN KEY([TASK_ID])
REFERENCES [dbo].[TaskEngine_Task] ([TASK_ID])
GO
ALTER TABLE [dbo].[Scheduled_Task] CHECK CONSTRAINT [ScheduledTask_FK2]
GO
ALTER TABLE [dbo].[Scheduled_Task]  WITH CHECK ADD  CONSTRAINT [ScheduledTask_FK3] FOREIGN KEY([RETRY_SCHEDULE_ID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[Scheduled_Task] CHECK CONSTRAINT [ScheduledTask_FK3]
GO
