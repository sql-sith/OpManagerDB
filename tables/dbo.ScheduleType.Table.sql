USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduleType]    Script Date: 6/29/2019 5:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleType](
	[SCHEDULE_ID] [int] NOT NULL,
	[SCHEDULETYPE] [varchar](50) NOT NULL,
 CONSTRAINT [ScheduleType_PK] PRIMARY KEY CLUSTERED 
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
