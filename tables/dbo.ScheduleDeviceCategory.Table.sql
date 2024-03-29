USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ScheduleDeviceCategory]    Script Date: 6/29/2019 5:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleDeviceCategory](
	[SCHEDULEID] [bigint] NOT NULL,
	[DeviceNameCategory] [varchar](250) NOT NULL,
 CONSTRAINT [ScheduleDeviceCategory_PK1] PRIMARY KEY CLUSTERED 
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__56032808]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__56032808] ON [dbo].[ScheduleDeviceCategory]
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduleDeviceCategory]  WITH CHECK ADD  CONSTRAINT [ScheduleDeviceCategory_FK1] FOREIGN KEY([SCHEDULEID])
REFERENCES [dbo].[ScheduleReports] ([SCHEDULEID])
GO
ALTER TABLE [dbo].[ScheduleDeviceCategory] CHECK CONSTRAINT [ScheduleDeviceCategory_FK1]
GO
