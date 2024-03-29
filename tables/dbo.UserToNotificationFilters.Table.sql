USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserToNotificationFilters]    Script Date: 6/29/2019 5:52:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToNotificationFilters](
	[NF_ID] [bigint] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
 CONSTRAINT [UserToNotificationFilters_PK] PRIMARY KEY CLUSTERED 
(
	[NF_ID] ASC,
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_522467639]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_522467639] ON [dbo].[UserToNotificationFilters]
(
	[NF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_522467640]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_522467640] ON [dbo].[UserToNotificationFilters]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserToNotificationFilters]  WITH CHECK ADD  CONSTRAINT [UserToNotificationFilters_FK1] FOREIGN KEY([NF_ID])
REFERENCES [dbo].[NotificationFilters] ([NF_ID])
GO
ALTER TABLE [dbo].[UserToNotificationFilters] CHECK CONSTRAINT [UserToNotificationFilters_FK1]
GO
ALTER TABLE [dbo].[UserToNotificationFilters]  WITH CHECK ADD  CONSTRAINT [UserToNotificationFilters_FK2] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[UserToNotificationFilters] CHECK CONSTRAINT [UserToNotificationFilters_FK2]
GO
