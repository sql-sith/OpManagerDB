USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Exporter_Info]    Script Date: 6/29/2019 5:47:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exporter_Info](
	[CONFIG_ID] [bigint] NOT NULL,
	[DESTINATION_IP] [varchar](255) NOT NULL,
	[PORT] [int] NOT NULL,
	[SOURCE] [varchar](100) NOT NULL,
 CONSTRAINT [Exporter_Info_PK] PRIMARY KEY CLUSTERED 
(
	[CONFIG_ID] ASC,
	[DESTINATION_IP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__688965864]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__688965864] ON [dbo].[Exporter_Info]
(
	[CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exporter_Info]  WITH CHECK ADD  CONSTRAINT [Exporter_Info_FK] FOREIGN KEY([CONFIG_ID])
REFERENCES [dbo].[Device_Config] ([CONFIG_ID])
GO
ALTER TABLE [dbo].[Exporter_Info] CHECK CONSTRAINT [Exporter_Info_FK]
GO
