USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NEEquipment]    Script Date: 6/29/2019 5:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEEquipment](
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [NEEquipmenmt_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__387213980]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__387213980] ON [dbo].[NEEquipment]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NEEquipment]  WITH CHECK ADD  CONSTRAINT [NEEquipment_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[ManagedResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NEEquipment] CHECK CONSTRAINT [NEEquipment_FK1]
GO
