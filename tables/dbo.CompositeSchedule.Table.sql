USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CompositeSchedule]    Script Date: 6/29/2019 5:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositeSchedule](
	[COS_SCHEDULEID] [bigint] NOT NULL,
	[COS_SUB_SCHEDULEID1] [bigint] NOT NULL,
	[COS_OPERATOR] [varchar](150) NOT NULL,
	[COS_SUB_SCHEDULEID2] [bigint] NOT NULL,
	[COS_PARENT_SCHEDULEID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COS_SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [COS_INDEX1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [COS_INDEX1] ON [dbo].[CompositeSchedule]
(
	[COS_SUB_SCHEDULEID1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [COS_INDEX2]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [COS_INDEX2] ON [dbo].[CompositeSchedule]
(
	[COS_SUB_SCHEDULEID2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [COS_INDEX3]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [COS_INDEX3] ON [dbo].[CompositeSchedule]
(
	[COS_PARENT_SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompositeSchedule]  WITH CHECK ADD  CONSTRAINT [COS_FK1] FOREIGN KEY([COS_SUB_SCHEDULEID1])
REFERENCES [dbo].[OPMSchedule] ([S_SCHEDULEID])
GO
ALTER TABLE [dbo].[CompositeSchedule] CHECK CONSTRAINT [COS_FK1]
GO
ALTER TABLE [dbo].[CompositeSchedule]  WITH CHECK ADD  CONSTRAINT [COS_FK2] FOREIGN KEY([COS_SUB_SCHEDULEID2])
REFERENCES [dbo].[OPMSchedule] ([S_SCHEDULEID])
GO
ALTER TABLE [dbo].[CompositeSchedule] CHECK CONSTRAINT [COS_FK2]
GO
ALTER TABLE [dbo].[CompositeSchedule]  WITH CHECK ADD  CONSTRAINT [COS_FK3] FOREIGN KEY([COS_PARENT_SCHEDULEID])
REFERENCES [dbo].[OPMSchedule] ([S_SCHEDULEID])
GO
ALTER TABLE [dbo].[CompositeSchedule] CHECK CONSTRAINT [COS_FK3]
GO
