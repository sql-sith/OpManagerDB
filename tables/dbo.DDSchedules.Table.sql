USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DDSchedules]    Script Date: 6/29/2019 5:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDSchedules](
	[DDID] [bigint] NOT NULL,
	[SCHEDULEID] [bigint] NOT NULL,
	[DESCRIPTION] [nvarchar](100) NOT NULL,
	[RID] [bigint] NOT NULL,
 CONSTRAINT [DDSchedules_PK] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1910651241]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1910651241] ON [dbo].[DDSchedules]
(
	[DDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1910651242]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1910651242] ON [dbo].[DDSchedules]
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DDSchedules]  WITH CHECK ADD  CONSTRAINT [DDSchedules_FK1] FOREIGN KEY([DDID])
REFERENCES [dbo].[DeviceDetails] ([DDID])
GO
ALTER TABLE [dbo].[DDSchedules] CHECK CONSTRAINT [DDSchedules_FK1]
GO
ALTER TABLE [dbo].[DDSchedules]  WITH CHECK ADD  CONSTRAINT [DDSchedules_FK2] FOREIGN KEY([SCHEDULEID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[DDSchedules] CHECK CONSTRAINT [DDSchedules_FK2]
GO
