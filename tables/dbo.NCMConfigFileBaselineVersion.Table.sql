USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMConfigFileBaselineVersion]    Script Date: 6/29/2019 5:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMConfigFileBaselineVersion](
	[FILE_ID] [bigint] NOT NULL,
	[VERSION_ID] [bigint] NOT NULL,
	[LABEL_ID] [int] NOT NULL,
 CONSTRAINT [NCMCFBVersion_PK] PRIMARY KEY CLUSTERED 
(
	[FILE_ID] ASC,
	[LABEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2128957025]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2128957025] ON [dbo].[NCMConfigFileBaselineVersion]
(
	[LABEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2128957026]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2128957026] ON [dbo].[NCMConfigFileBaselineVersion]
(
	[VERSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1732439283]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1732439283] ON [dbo].[NCMConfigFileBaselineVersion]
(
	[FILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMConfigFileBaselineVersion]  WITH CHECK ADD  CONSTRAINT [NCMCFBVersion_FK] FOREIGN KEY([FILE_ID])
REFERENCES [dbo].[NCMConfigFile] ([FILE_ID])
GO
ALTER TABLE [dbo].[NCMConfigFileBaselineVersion] CHECK CONSTRAINT [NCMCFBVersion_FK]
GO
ALTER TABLE [dbo].[NCMConfigFileBaselineVersion]  WITH CHECK ADD  CONSTRAINT [NCMCFBVersion_FK1] FOREIGN KEY([VERSION_ID])
REFERENCES [dbo].[NCMVersion] ([VERSION_ID])
GO
ALTER TABLE [dbo].[NCMConfigFileBaselineVersion] CHECK CONSTRAINT [NCMCFBVersion_FK1]
GO
ALTER TABLE [dbo].[NCMConfigFileBaselineVersion]  WITH CHECK ADD  CONSTRAINT [NCMCFBVersion_FK2] FOREIGN KEY([LABEL_ID])
REFERENCES [dbo].[NCMLabel] ([LABEL_ID])
GO
ALTER TABLE [dbo].[NCMConfigFileBaselineVersion] CHECK CONSTRAINT [NCMCFBVersion_FK2]
GO
