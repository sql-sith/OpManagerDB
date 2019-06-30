USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPMSAP2000PowerSupplySlot]    Script Date: 6/29/2019 5:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPMSAP2000PowerSupplySlot](
	[DEVICE_ID] [bigint] NOT NULL,
	[SLOT_NAME] [varchar](250) NOT NULL,
	[POWERED] [varchar](250) NULL,
 CONSTRAINT [HPMSAP2000PowerSupplySlot_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[SLOT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1913744211]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1913744211] ON [dbo].[HPMSAP2000PowerSupplySlot]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPMSAP2000PowerSupplySlot]  WITH CHECK ADD  CONSTRAINT [HPMSAP2000PowerSupplySlot_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPMSAP2000PowerSupplySlot] CHECK CONSTRAINT [HPMSAP2000PowerSupplySlot_FK]
GO
