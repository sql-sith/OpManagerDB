USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HardwareReportParams]    Script Date: 6/29/2019 5:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HardwareReportParams](
	[SCHEDULEID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[HARDWARECATEGORY] [varchar](100) NOT NULL,
 CONSTRAINT [HardwareReportParams_PK] PRIMARY KEY CLUSTERED 
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_772850767]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_772850767] ON [dbo].[HardwareReportParams]
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_772850768]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_772850768] ON [dbo].[HardwareReportParams]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HardwareReportParams]  WITH CHECK ADD  CONSTRAINT [HardwareReportParams_FK1] FOREIGN KEY([SCHEDULEID])
REFERENCES [dbo].[ScheduleReports] ([SCHEDULEID])
GO
ALTER TABLE [dbo].[HardwareReportParams] CHECK CONSTRAINT [HardwareReportParams_FK1]
GO
ALTER TABLE [dbo].[HardwareReportParams]  WITH CHECK ADD  CONSTRAINT [HardwareReportParams_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[HardwareReportParams] CHECK CONSTRAINT [HardwareReportParams_FK2]
GO
