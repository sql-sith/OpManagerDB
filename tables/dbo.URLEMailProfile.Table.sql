USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[URLEMailProfile]    Script Date: 6/29/2019 5:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[URLEMailProfile](
	[PROFILEID] [bigint] NOT NULL,
	[TOADDRESS] [varchar](250) NULL,
	[FROMADDRESS] [varchar](250) NULL,
	[SUBJECT] [varchar](250) NULL,
	[MESSAGE] [varchar](250) NULL,
	[MAILFORMAT] [varchar](50) NULL,
 CONSTRAINT [URLEMailProfile_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_466146953]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_466146953] ON [dbo].[URLEMailProfile]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[URLEMailProfile]  WITH CHECK ADD  CONSTRAINT [URLEMailProfile_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[NotificationProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[URLEMailProfile] CHECK CONSTRAINT [URLEMailProfile_FK1]
GO
