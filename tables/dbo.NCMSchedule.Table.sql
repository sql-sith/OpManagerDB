USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMSchedule]    Script Date: 6/29/2019 5:49:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMSchedule](
	[SCHEDULE_ID] [bigint] NOT NULL,
	[LOGIN_ID] [bigint] NOT NULL,
	[TASK_TYPE] [varchar](30) NOT NULL,
	[RECURRENCE_TYPE] [varchar](20) NOT NULL,
	[RECURRENCE_DETAILS] [varchar](250) NOT NULL,
	[LAST_MODIFIED_BY] [varchar](100) NOT NULL,
 CONSTRAINT [NCMSchedule_PK] PRIMARY KEY CLUSTERED 
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1973150787]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1973150787] ON [dbo].[NCMSchedule]
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1973150788]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1973150788] ON [dbo].[NCMSchedule]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMSchedule] ADD  DEFAULT ('[NA]') FOR [LAST_MODIFIED_BY]
GO
ALTER TABLE [dbo].[NCMSchedule]  WITH CHECK ADD  CONSTRAINT [NCMSchedule_FK1] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[NCMSchedule] CHECK CONSTRAINT [NCMSchedule_FK1]
GO
ALTER TABLE [dbo].[NCMSchedule]  WITH CHECK ADD  CONSTRAINT [NCMSchedule_FK2] FOREIGN KEY([LOGIN_ID])
REFERENCES [dbo].[AaaLogin] ([LOGIN_ID])
GO
ALTER TABLE [dbo].[NCMSchedule] CHECK CONSTRAINT [NCMSchedule_FK2]
GO
