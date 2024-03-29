USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BillCostDetails]    Script Date: 6/29/2019 5:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillCostDetails](
	[ID] [bigint] NOT NULL,
	[PLAN_ID] [int] NOT NULL,
	[START_INDEX] [bigint] NOT NULL,
	[END_INDEX] [bigint] NOT NULL,
	[BASE_SPEED] [bigint] NOT NULL,
	[BASE_PRICE] [float] NOT NULL,
	[ADD_SPEED] [bigint] NOT NULL,
	[ADD_PRICE] [float] NOT NULL,
	[PERCENTILE] [int] NOT NULL,
 CONSTRAINT [BillCostDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2100838506]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2100838506] ON [dbo].[BillCostDetails]
(
	[PLAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillCostDetails]  WITH CHECK ADD  CONSTRAINT [BillCostDetails_FK] FOREIGN KEY([PLAN_ID])
REFERENCES [dbo].[BillPlan] ([PLAN_ID])
GO
ALTER TABLE [dbo].[BillCostDetails] CHECK CONSTRAINT [BillCostDetails_FK]
GO
