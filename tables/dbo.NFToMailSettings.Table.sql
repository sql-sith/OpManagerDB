USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NFToMailSettings]    Script Date: 6/29/2019 5:49:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NFToMailSettings](
	[NF_ID] [bigint] NOT NULL,
	[MAILSETTINGSID] [bigint] NOT NULL,
 CONSTRAINT [NFToMailSettings_PK] PRIMARY KEY CLUSTERED 
(
	[NF_ID] ASC,
	[MAILSETTINGSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1688832581]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1688832581] ON [dbo].[NFToMailSettings]
(
	[MAILSETTINGSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1688832582]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1688832582] ON [dbo].[NFToMailSettings]
(
	[NF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NFToMailSettings]  WITH CHECK ADD  CONSTRAINT [NFToMailSettings_FK1] FOREIGN KEY([NF_ID])
REFERENCES [dbo].[NotificationFilters] ([NF_ID])
GO
ALTER TABLE [dbo].[NFToMailSettings] CHECK CONSTRAINT [NFToMailSettings_FK1]
GO
ALTER TABLE [dbo].[NFToMailSettings]  WITH CHECK ADD  CONSTRAINT [NFToMailSettings_FK2] FOREIGN KEY([MAILSETTINGSID])
REFERENCES [dbo].[MailSettings] ([MAILSETTINGSID])
GO
ALTER TABLE [dbo].[NFToMailSettings] CHECK CONSTRAINT [NFToMailSettings_FK2]
GO
