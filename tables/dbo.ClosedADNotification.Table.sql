USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ClosedADNotification]    Script Date: 6/29/2019 5:46:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedADNotification](
	[AD_ID] [bigint] NOT NULL,
	[USERID] [bigint] NOT NULL,
 CONSTRAINT [ClosedADNotification_PK] PRIMARY KEY CLUSTERED 
(
	[AD_ID] ASC,
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2070872967]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2070872967] ON [dbo].[ClosedADNotification]
(
	[AD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2070872968]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2070872968] ON [dbo].[ClosedADNotification]
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClosedADNotification]  WITH CHECK ADD  CONSTRAINT [ClosedADNotification_FK1] FOREIGN KEY([AD_ID])
REFERENCES [dbo].[LoginPageNotificationDetails] ([ID])
GO
ALTER TABLE [dbo].[ClosedADNotification] CHECK CONSTRAINT [ClosedADNotification_FK1]
GO
ALTER TABLE [dbo].[ClosedADNotification]  WITH CHECK ADD  CONSTRAINT [ClosedADNotification_FK2] FOREIGN KEY([USERID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[ClosedADNotification] CHECK CONSTRAINT [ClosedADNotification_FK2]
GO
