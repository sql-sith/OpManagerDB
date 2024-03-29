USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InventoryCustomFields]    Script Date: 6/29/2019 5:48:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryCustomFields](
	[ID] [bigint] NOT NULL,
	[REPORTID] [bigint] NOT NULL,
	[FIELDID] [int] NOT NULL,
 CONSTRAINT [InventoryCustomFields_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1868549427]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1868549427] ON [dbo].[InventoryCustomFields]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1868549428]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1868549428] ON [dbo].[InventoryCustomFields]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1868549429]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1868549429] ON [dbo].[InventoryCustomFields]
(
	[FIELDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryCustomFields]  WITH CHECK ADD  CONSTRAINT [InventoryCustomFields_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[InventoryFieldUID] ([ID])
GO
ALTER TABLE [dbo].[InventoryCustomFields] CHECK CONSTRAINT [InventoryCustomFields_FK1]
GO
ALTER TABLE [dbo].[InventoryCustomFields]  WITH CHECK ADD  CONSTRAINT [InventoryCustomFields_FK2] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[InventoryCustomFields] CHECK CONSTRAINT [InventoryCustomFields_FK2]
GO
ALTER TABLE [dbo].[InventoryCustomFields]  WITH CHECK ADD  CONSTRAINT [InventoryCustomFields_FK3] FOREIGN KEY([FIELDID])
REFERENCES [dbo].[CustomFieldsDefinition] ([CUSTOMFIELDID])
GO
ALTER TABLE [dbo].[InventoryCustomFields] CHECK CONSTRAINT [InventoryCustomFields_FK3]
GO
