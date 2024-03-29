USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NotificationTriggeredDetails]    Script Date: 6/29/2019 5:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTriggeredDetails](
	[PROFILEID] [bigint] NOT NULL,
	[ENTITY] [varchar](250) NOT NULL,
	[SEVERITY] [int] NOT NULL,
 CONSTRAINT [NotificationTriggeredDetails_PK] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC,
	[ENTITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__372054685]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__372054685] ON [dbo].[NotificationTriggeredDetails]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotificationTriggeredDetails]  WITH CHECK ADD  CONSTRAINT [NotificationTriggeredDetails_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[NotificationProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[NotificationTriggeredDetails] CHECK CONSTRAINT [NotificationTriggeredDetails_FK1]
GO
