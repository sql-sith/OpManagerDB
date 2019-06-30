USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConfigFileHistoryData]    Script Date: 6/29/2019 5:46:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigFileHistoryData](
	[ID] [bigint] NOT NULL,
	[STARTUPFILE] [varchar](100) NULL,
	[RUNNINGFILE] [varchar](100) NULL,
 CONSTRAINT [ConfigFileHistoryData_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__47815987]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__47815987] ON [dbo].[ConfigFileHistoryData]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConfigFileHistoryData]  WITH CHECK ADD  CONSTRAINT [ConfigFileHistoryData_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[ConfigFileInputConfig] ([DEVICEID])
GO
ALTER TABLE [dbo].[ConfigFileHistoryData] CHECK CONSTRAINT [ConfigFileHistoryData_FK1]
GO
