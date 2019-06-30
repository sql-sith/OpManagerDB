USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDownloadScheduleRQ]    Script Date: 6/29/2019 5:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDownloadScheduleRQ](
	[REQUEST_ID] [bigint] NOT NULL,
	[SCHEDULE_ID] [bigint] NOT NULL,
	[OPERATION_PERFORMED] [varchar](20) NOT NULL,
	[LAST_MODIFIED_TIME] [datetime] NULL,
	[LAST_MODIFIED_BY] [varchar](100) NOT NULL,
 CONSTRAINT [NCMDownloadScheduleRQ_PK1] PRIMARY KEY CLUSTERED 
(
	[REQUEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_181714275]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_181714275] ON [dbo].[NCMDownloadScheduleRQ]
(
	[REQUEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_181714276]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_181714276] ON [dbo].[NCMDownloadScheduleRQ]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMDownloadScheduleRQ] ADD  DEFAULT ('-') FOR [LAST_MODIFIED_BY]
GO
ALTER TABLE [dbo].[NCMDownloadScheduleRQ]  WITH CHECK ADD  CONSTRAINT [NCMDownloadScheduleRQ_FK1] FOREIGN KEY([REQUEST_ID])
REFERENCES [dbo].[NCMApprovalRequest] ([REQUEST_ID])
GO
ALTER TABLE [dbo].[NCMDownloadScheduleRQ] CHECK CONSTRAINT [NCMDownloadScheduleRQ_FK1]
GO
ALTER TABLE [dbo].[NCMDownloadScheduleRQ]  WITH CHECK ADD  CONSTRAINT [NCMDownloadScheduleRQ_FK2] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[NCMDownloadScheduleRQ] CHECK CONSTRAINT [NCMDownloadScheduleRQ_FK2]
GO
