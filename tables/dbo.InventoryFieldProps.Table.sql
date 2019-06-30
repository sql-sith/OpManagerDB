USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InventoryFieldProps]    Script Date: 6/29/2019 5:48:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryFieldProps](
	[ID] [bigint] NOT NULL,
	[LEVEL] [int] NOT NULL,
 CONSTRAINT [InventoryFieldProps_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[LEVEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1487407809]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1487407809] ON [dbo].[InventoryFieldProps]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryFieldProps]  WITH CHECK ADD  CONSTRAINT [InventoryFieldProps_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[InventoryFieldUID] ([ID])
GO
ALTER TABLE [dbo].[InventoryFieldProps] CHECK CONSTRAINT [InventoryFieldProps_FK1]
GO
