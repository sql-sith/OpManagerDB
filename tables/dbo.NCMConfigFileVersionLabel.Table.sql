USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMConfigFileVersionLabel]    Script Date: 6/29/2019 5:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMConfigFileVersionLabel](
	[FILE_ID] [bigint] NOT NULL,
	[VERSION_ID] [bigint] NOT NULL,
	[LABEL_ID] [int] NOT NULL,
 CONSTRAINT [NCMConfigFileVersionLabel_PK] PRIMARY KEY CLUSTERED 
(
	[FILE_ID] ASC,
	[LABEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1087928110]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1087928110] ON [dbo].[NCMConfigFileVersionLabel]
(
	[FILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_633967007]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_633967007] ON [dbo].[NCMConfigFileVersionLabel]
(
	[VERSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_633967008]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_633967008] ON [dbo].[NCMConfigFileVersionLabel]
(
	[LABEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMConfigFileVersionLabel]  WITH CHECK ADD  CONSTRAINT [NCMConfigFileVersionLabel_FK] FOREIGN KEY([FILE_ID])
REFERENCES [dbo].[NCMConfigFile] ([FILE_ID])
GO
ALTER TABLE [dbo].[NCMConfigFileVersionLabel] CHECK CONSTRAINT [NCMConfigFileVersionLabel_FK]
GO
ALTER TABLE [dbo].[NCMConfigFileVersionLabel]  WITH CHECK ADD  CONSTRAINT [NCMConfigFileVersionLabel_FK1] FOREIGN KEY([VERSION_ID])
REFERENCES [dbo].[NCMVersion] ([VERSION_ID])
GO
ALTER TABLE [dbo].[NCMConfigFileVersionLabel] CHECK CONSTRAINT [NCMConfigFileVersionLabel_FK1]
GO
ALTER TABLE [dbo].[NCMConfigFileVersionLabel]  WITH CHECK ADD  CONSTRAINT [NCMConfigFileVersionLabel_FK2] FOREIGN KEY([LABEL_ID])
REFERENCES [dbo].[NCMLabel] ([LABEL_ID])
GO
ALTER TABLE [dbo].[NCMConfigFileVersionLabel] CHECK CONSTRAINT [NCMConfigFileVersionLabel_FK2]
GO
