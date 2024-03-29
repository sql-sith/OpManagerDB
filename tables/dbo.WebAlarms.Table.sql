USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WebAlarms]    Script Date: 6/29/2019 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebAlarms](
	[USERID] [bigint] NOT NULL,
	[ENTITY] [varchar](250) NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
	[MUTE] [bit] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[HIDE_NOTIFICATION] [bit] NOT NULL,
 CONSTRAINT [WebAlarms_PK1] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[ENTITY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1443355875]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1443355875] ON [dbo].[WebAlarms]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1443355876]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1443355876] ON [dbo].[WebAlarms]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebAlarms] ADD  DEFAULT ((0)) FOR [MUTE]
GO
ALTER TABLE [dbo].[WebAlarms] ADD  DEFAULT ((0)) FOR [HIDE_NOTIFICATION]
GO
ALTER TABLE [dbo].[WebAlarms]  WITH CHECK ADD  CONSTRAINT [WebAlarms_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[WebAlarmProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[WebAlarms] CHECK CONSTRAINT [WebAlarms_FK1]
GO
ALTER TABLE [dbo].[WebAlarms]  WITH CHECK ADD  CONSTRAINT [WebAlarms_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[WebAlarms] CHECK CONSTRAINT [WebAlarms_FK2]
GO
