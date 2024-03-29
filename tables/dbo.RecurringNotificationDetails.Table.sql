USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RecurringNotificationDetails]    Script Date: 6/29/2019 5:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecurringNotificationDetails](
	[ASSOCIATIONID] [bigint] NOT NULL,
	[TRIGGERINTERVAL] [bigint] NOT NULL,
	[TRIGGERCOUNT] [int] NOT NULL,
	[ACKNOWLEDGE] [bit] NOT NULL,
 CONSTRAINT [RecurringNotificationDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1701792985]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1701792985] ON [dbo].[RecurringNotificationDetails]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecurringNotificationDetails]  WITH CHECK ADD  CONSTRAINT [RecurringNotificationDetails_FK1] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[ProfileAssociation] ([ID])
GO
ALTER TABLE [dbo].[RecurringNotificationDetails] CHECK CONSTRAINT [RecurringNotificationDetails_FK1]
GO
