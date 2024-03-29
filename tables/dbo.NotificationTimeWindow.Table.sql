USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NotificationTimeWindow]    Script Date: 6/29/2019 5:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTimeWindow](
	[ID] [bigint] NOT NULL,
	[STARTTIME] [varchar](6) NOT NULL,
	[ENDTIME] [varchar](6) NOT NULL,
	[SUNDAY] [bit] NOT NULL,
	[MONDAY] [bit] NOT NULL,
	[TUESDAY] [bit] NOT NULL,
	[WEDNESDAY] [bit] NOT NULL,
	[THURSDAY] [bit] NOT NULL,
	[FRIDAY] [bit] NOT NULL,
	[SATURDAY] [bit] NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
 CONSTRAINT [NotificationTimeWindow_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_854126549]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_854126549] ON [dbo].[NotificationTimeWindow]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [SUNDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [MONDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [TUESDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [WEDNESDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [THURSDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [FRIDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow] ADD  DEFAULT ((1)) FOR [SATURDAY]
GO
ALTER TABLE [dbo].[NotificationTimeWindow]  WITH CHECK ADD  CONSTRAINT [NotificationTimeWindow_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[ProfileAssociation] ([ID])
GO
ALTER TABLE [dbo].[NotificationTimeWindow] CHECK CONSTRAINT [NotificationTimeWindow_FK1]
GO
