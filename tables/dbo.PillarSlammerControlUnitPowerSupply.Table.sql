USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PillarSlammerControlUnitPowerSupply]    Script Date: 6/29/2019 5:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PillarSlammerControlUnitPowerSupply](
	[SLAMMER_DEVICE_ID] [bigint] NOT NULL,
	[SLAMMER_INSTANCE] [int] NOT NULL,
	[CONTROL_UNIT_INSTANCE] [int] NOT NULL,
	[POWER_SUPPLY_INSTANCE] [int] NOT NULL,
	[NUMBER] [int] NOT NULL,
	[SERIAL_NUMBER] [varchar](250) NULL,
	[MODEL] [varchar](250) NULL,
	[CU_PS_INSTANCE] [varchar](250) NULL,
 CONSTRAINT [PillarSlammerControlUnitPowerSupply_PK] PRIMARY KEY CLUSTERED 
(
	[SLAMMER_DEVICE_ID] ASC,
	[CONTROL_UNIT_INSTANCE] ASC,
	[POWER_SUPPLY_INSTANCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_582711014]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_582711014] ON [dbo].[PillarSlammerControlUnitPowerSupply]
(
	[SLAMMER_DEVICE_ID] ASC,
	[CONTROL_UNIT_INSTANCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PillarSlammerControlUnitPowerSupply]  WITH CHECK ADD  CONSTRAINT [PillarSlammerControlUnitPowerSupply_FK] FOREIGN KEY([SLAMMER_DEVICE_ID], [CONTROL_UNIT_INSTANCE])
REFERENCES [dbo].[PillarSlammerControlUnit] ([SLAMMER_DEVICE_ID], [CONTROL_UNIT_INSTANCE])
GO
ALTER TABLE [dbo].[PillarSlammerControlUnitPowerSupply] CHECK CONSTRAINT [PillarSlammerControlUnitPowerSupply_FK]
GO
