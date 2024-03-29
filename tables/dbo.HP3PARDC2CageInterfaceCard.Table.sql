USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARDC2CageInterfaceCard]    Script Date: 6/29/2019 5:48:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARDC2CageInterfaceCard](
	[RAID_ID] [bigint] NOT NULL,
	[CAGE_ID] [varchar](150) NOT NULL,
	[IFC_ID] [varchar](150) NOT NULL,
	[SPLIT_LED] [varchar](250) NOT NULL,
	[SYSTEM_LED] [varchar](250) NOT NULL,
	[HOTPLUG_LED] [varchar](250) NOT NULL,
	[LOOP_A_LINK_RX_STATE] [varchar](250) NOT NULL,
	[LOOP_B_LINK_RX_STATE] [varchar](250) NOT NULL,
	[LOOP_A_LINK_TX_STATE] [varchar](250) NOT NULL,
	[LOOP_B_LINK_TX_STATE] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARDC2CageInterfaceCard_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[CAGE_ID] ASC,
	[IFC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_951855357]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_951855357] ON [dbo].[HP3PARDC2CageInterfaceCard]
(
	[RAID_ID] ASC,
	[CAGE_ID] ASC,
	[IFC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARDC2CageInterfaceCard]  WITH CHECK ADD  CONSTRAINT [HP3PARDC2CageInterfaceCard_FK1] FOREIGN KEY([RAID_ID], [CAGE_ID], [IFC_ID])
REFERENCES [dbo].[HP3PARCageInterfaceCard] ([RAID_ID], [CAGE_ID], [IFC_ID])
GO
ALTER TABLE [dbo].[HP3PARDC2CageInterfaceCard] CHECK CONSTRAINT [HP3PARDC2CageInterfaceCard_FK1]
GO
