USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMConfigDownloadInput]    Script Date: 6/29/2019 5:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMConfigDownloadInput](
	[INSTANCEID] [bigint] NOT NULL,
	[CONFIG_CONTENTS] [varbinary](max) NOT NULL,
	[DOWNLOADAS] [varchar](50) NOT NULL,
	[TEMPLATE_NAME] [varchar](100) NULL,
 CONSTRAINT [NCMConfigDownloadInput_PK1] PRIMARY KEY CLUSTERED 
(
	[INSTANCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1852389643]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1852389643] ON [dbo].[NCMConfigDownloadInput]
(
	[INSTANCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMConfigDownloadInput]  WITH CHECK ADD  CONSTRAINT [NCMConfigDownloadInput_FK1] FOREIGN KEY([INSTANCEID])
REFERENCES [dbo].[NCMConfigAutomationInput] ([INSTANCEID])
GO
ALTER TABLE [dbo].[NCMConfigDownloadInput] CHECK CONSTRAINT [NCMConfigDownloadInput_FK1]
GO
