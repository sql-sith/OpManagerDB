USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ExternalRBDeviceMapperTable]    Script Date: 6/29/2019 5:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalRBDeviceMapperTable](
	[EXTMOID] [bigint] NOT NULL,
 CONSTRAINT [ExternalRBDeviceMapperTable_PK1] PRIMARY KEY CLUSTERED 
(
	[EXTMOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_204547337]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_204547337] ON [dbo].[ExternalRBDeviceMapperTable]
(
	[EXTMOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExternalRBDeviceMapperTable]  WITH CHECK ADD  CONSTRAINT [ExternalRBDeviceMapperTable_FK1] FOREIGN KEY([EXTMOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[ExternalRBDeviceMapperTable] CHECK CONSTRAINT [ExternalRBDeviceMapperTable_FK1]
GO
