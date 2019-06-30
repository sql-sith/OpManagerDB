USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMScheduleRT]    Script Date: 6/29/2019 5:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMScheduleRT](
	[INSTANCE_ID] [bigint] NOT NULL,
	[REPORT_NAME] [varchar](100) NOT NULL,
 CONSTRAINT [NCMScheduleRT_PK] PRIMARY KEY CLUSTERED 
(
	[INSTANCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1819006270]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1819006270] ON [dbo].[NCMScheduleRT]
(
	[INSTANCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMScheduleRT]  WITH CHECK ADD  CONSTRAINT [NCMScheduleRT_FK1] FOREIGN KEY([INSTANCE_ID])
REFERENCES [dbo].[NCMScheduleReport] ([INSTANCE_ID])
GO
ALTER TABLE [dbo].[NCMScheduleRT] CHECK CONSTRAINT [NCMScheduleRT_FK1]
GO
