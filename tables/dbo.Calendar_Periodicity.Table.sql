USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Calendar_Periodicity]    Script Date: 6/29/2019 5:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar_Periodicity](
	[SCHEDULE_ID] [bigint] NOT NULL,
	[WORKING_HOURS_ID] [bigint] NOT NULL,
	[PERIODICITY] [bigint] NOT NULL,
	[UNIT_OF_PERIODICITY] [varchar](20) NOT NULL,
 CONSTRAINT [Calendar_Periodicity_PK] PRIMARY KEY CLUSTERED 
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__895936768]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__895936768] ON [dbo].[Calendar_Periodicity]
(
	[WORKING_HOURS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__895936769]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__895936769] ON [dbo].[Calendar_Periodicity]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Calendar_Periodicity] ADD  DEFAULT ('1') FOR [PERIODICITY]
GO
ALTER TABLE [dbo].[Calendar_Periodicity] ADD  DEFAULT ('hour') FOR [UNIT_OF_PERIODICITY]
GO
ALTER TABLE [dbo].[Calendar_Periodicity]  WITH CHECK ADD  CONSTRAINT [Calendar_Periodicity_FK1] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[Calendar] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[Calendar_Periodicity] CHECK CONSTRAINT [Calendar_Periodicity_FK1]
GO
ALTER TABLE [dbo].[Calendar_Periodicity]  WITH CHECK ADD  CONSTRAINT [Calendar_Periodicity_FK2] FOREIGN KEY([WORKING_HOURS_ID])
REFERENCES [dbo].[Working_Hours] ([WORKING_HOURS_ID])
GO
ALTER TABLE [dbo].[Calendar_Periodicity] CHECK CONSTRAINT [Calendar_Periodicity_FK2]
GO
