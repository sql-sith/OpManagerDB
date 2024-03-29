USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SchNBAR2AppCriteria]    Script Date: 6/29/2019 5:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchNBAR2AppCriteria](
	[SCH_APP_ID] [int] NOT NULL,
	[SCHEDULE_ID] [bigint] NOT NULL,
	[NBAR2_APP_ID] [varchar](255) NOT NULL,
 CONSTRAINT [SchNBAR2AppCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[SCH_APP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1865140455]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1865140455] ON [dbo].[SchNBAR2AppCriteria]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SchNBAR2AppCriteria]  WITH CHECK ADD  CONSTRAINT [SchNBAR2AppCriteria_FK] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[ScheduleDetails] ([ID])
GO
ALTER TABLE [dbo].[SchNBAR2AppCriteria] CHECK CONSTRAINT [SchNBAR2AppCriteria_FK]
GO
