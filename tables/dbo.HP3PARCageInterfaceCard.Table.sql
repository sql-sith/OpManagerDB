USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARCageInterfaceCard]    Script Date: 6/29/2019 5:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARCageInterfaceCard](
	[RAID_ID] [bigint] NOT NULL,
	[CAGE_ID] [varchar](150) NOT NULL,
	[IFC_ID] [varchar](150) NOT NULL,
	[IFC_NAME] [varchar](250) NOT NULL,
	[IFC_MANUFACTURER] [varchar](250) NOT NULL,
	[IFC_MODEL] [varchar](250) NOT NULL,
	[IFC_SERIAL_NUMBER] [varchar](250) NOT NULL,
	[IFC_POSITION] [varchar](250) NOT NULL,
	[IFC_CAGE_TYPE] [varchar](250) NOT NULL,
	[LOOP_A_PORT_WWNS] [varchar](250) NOT NULL,
	[LOOP_B_PORT_WWNS] [varchar](250) NOT NULL,
	[NODE_PORTS_LOOP_A] [varchar](250) NOT NULL,
	[NODE_PORTS_LOOP_B] [varchar](250) NOT NULL,
	[LOOP_A_LINK_SPEED] [varchar](250) NOT NULL,
	[LOOP_B_LINK_SPEED] [varchar](250) NOT NULL,
	[PORTS_LOOP_A] [varchar](250) NOT NULL,
	[PORTS_LOOP_B] [varchar](250) NOT NULL,
	[IFC_OPER_STATE] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARCageInterfaceCard_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[CAGE_ID] ASC,
	[IFC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__2125406844]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2125406844] ON [dbo].[HP3PARCageInterfaceCard]
(
	[RAID_ID] ASC,
	[CAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARCageInterfaceCard]  WITH CHECK ADD  CONSTRAINT [HP3PARCageInterfaceCard_FK1] FOREIGN KEY([RAID_ID], [CAGE_ID])
REFERENCES [dbo].[HP3PARCage] ([RAID_ID], [CAGE_ID])
GO
ALTER TABLE [dbo].[HP3PARCageInterfaceCard] CHECK CONSTRAINT [HP3PARCageInterfaceCard_FK1]
GO
