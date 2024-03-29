USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDevicePersonality]    Script Date: 6/29/2019 5:49:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDevicePersonality](
	[DEVICETEMPLATEID] [bigint] NOT NULL,
	[PERSONALITYID] [bigint] NOT NULL,
 CONSTRAINT [NCMDevicePersonality_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICETEMPLATEID] ASC,
	[PERSONALITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__455632082]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__455632082] ON [dbo].[NCMDevicePersonality]
(
	[PERSONALITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__455632083]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__455632083] ON [dbo].[NCMDevicePersonality]
(
	[DEVICETEMPLATEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMDevicePersonality]  WITH CHECK ADD  CONSTRAINT [NCMDevicePersonality_FK1] FOREIGN KEY([DEVICETEMPLATEID])
REFERENCES [dbo].[NCMDeviceTemplate] ([DEVICETEMPLATEID])
GO
ALTER TABLE [dbo].[NCMDevicePersonality] CHECK CONSTRAINT [NCMDevicePersonality_FK1]
GO
ALTER TABLE [dbo].[NCMDevicePersonality]  WITH CHECK ADD  CONSTRAINT [NCMDevicePersonality_FK2] FOREIGN KEY([PERSONALITYID])
REFERENCES [dbo].[NCMPersonality] ([PERSONALITYID])
GO
ALTER TABLE [dbo].[NCMDevicePersonality] CHECK CONSTRAINT [NCMDevicePersonality_FK2]
GO
