USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WOLConfig]    Script Date: 6/29/2019 5:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOLConfig](
	[TASK_ID] [bigint] NOT NULL,
	[TIME_INTERVAL] [int] NULL,
	[PACKET_TYPE] [bit] NOT NULL,
 CONSTRAINT [WOLConfig_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1252293923]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1252293923] ON [dbo].[WOLConfig]
(
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WOLConfig] ADD  DEFAULT ('3') FOR [TIME_INTERVAL]
GO
ALTER TABLE [dbo].[WOLConfig] ADD  DEFAULT ((1)) FOR [PACKET_TYPE]
GO
ALTER TABLE [dbo].[WOLConfig]  WITH CHECK ADD  CONSTRAINT [WOLConfig_FK1] FOREIGN KEY([TASK_ID])
REFERENCES [dbo].[GroupTaskName] ([TASK_ID])
GO
ALTER TABLE [dbo].[WOLConfig] CHECK CONSTRAINT [WOLConfig_FK1]
GO
