USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DeviceInventoryDefinition]    Script Date: 6/29/2019 5:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceInventoryDefinition](
	[REPORTID] [bigint] NOT NULL,
	[TYPE] [int] NOT NULL,
 CONSTRAINT [DeviceInventoryDefinition_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1124118458]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1124118458] ON [dbo].[DeviceInventoryDefinition]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeviceInventoryDefinition]  WITH CHECK ADD  CONSTRAINT [DeviceInventoryDefinition_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[DeviceInventoryDefinition] CHECK CONSTRAINT [DeviceInventoryDefinition_FK1]
GO
