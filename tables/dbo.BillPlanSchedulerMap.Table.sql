USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BillPlanSchedulerMap]    Script Date: 6/29/2019 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillPlanSchedulerMap](
	[PLAN_ID] [int] NOT NULL,
	[SCHEDULERID] [bigint] NOT NULL,
 CONSTRAINT [BillPlanSchedulerMap_PK] PRIMARY KEY CLUSTERED 
(
	[PLAN_ID] ASC,
	[SCHEDULERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__207484577]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__207484577] ON [dbo].[BillPlanSchedulerMap]
(
	[SCHEDULERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__207484578]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__207484578] ON [dbo].[BillPlanSchedulerMap]
(
	[PLAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillPlanSchedulerMap]  WITH CHECK ADD  CONSTRAINT [BillPlanSchedulerMap_Fk1] FOREIGN KEY([PLAN_ID])
REFERENCES [dbo].[BillPlan] ([PLAN_ID])
GO
ALTER TABLE [dbo].[BillPlanSchedulerMap] CHECK CONSTRAINT [BillPlanSchedulerMap_Fk1]
GO
ALTER TABLE [dbo].[BillPlanSchedulerMap]  WITH CHECK ADD  CONSTRAINT [BillPlanSchedulerMap_Fk2] FOREIGN KEY([SCHEDULERID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[BillPlanSchedulerMap] CHECK CONSTRAINT [BillPlanSchedulerMap_Fk2]
GO
