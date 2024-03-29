USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WebAlarmProfile]    Script Date: 6/29/2019 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebAlarmProfile](
	[PROFILEID] [bigint] NOT NULL,
	[SOUNDFILE] [varchar](100) NOT NULL,
 CONSTRAINT [WebAlarmProfile_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_35765433]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_35765433] ON [dbo].[WebAlarmProfile]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WebAlarmProfile]  WITH CHECK ADD  CONSTRAINT [WebAlarmProfile_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[NotificationProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[WebAlarmProfile] CHECK CONSTRAINT [WebAlarmProfile_FK1]
GO
