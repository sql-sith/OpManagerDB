USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InventorySummaryField]    Script Date: 6/29/2019 5:48:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventorySummaryField](
	[ID] [bigint] NOT NULL,
 CONSTRAINT [InventorySummaryField_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__741799011]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__741799011] ON [dbo].[InventorySummaryField]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventorySummaryField]  WITH CHECK ADD  CONSTRAINT [InventorySummaryField_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[InventoryFieldUID] ([ID])
GO
ALTER TABLE [dbo].[InventorySummaryField] CHECK CONSTRAINT [InventorySummaryField_FK1]
GO
