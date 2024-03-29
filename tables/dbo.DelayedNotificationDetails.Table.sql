USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DelayedNotificationDetails]    Script Date: 6/29/2019 5:47:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DelayedNotificationDetails](
	[ASSOCIATIONID] [bigint] NOT NULL,
	[DELAYINTERVAL] [bigint] NOT NULL,
	[ACKNOWLEDGE] [bit] NOT NULL,
 CONSTRAINT [DelayedNotificationDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_569619202]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_569619202] ON [dbo].[DelayedNotificationDetails]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DelayedNotificationDetails]  WITH CHECK ADD  CONSTRAINT [DelayedNotificationDetails_FK1] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[ProfileAssociation] ([ID])
GO
ALTER TABLE [dbo].[DelayedNotificationDetails] CHECK CONSTRAINT [DelayedNotificationDetails_FK1]
GO
