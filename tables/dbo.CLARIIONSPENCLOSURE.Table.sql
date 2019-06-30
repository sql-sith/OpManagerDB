USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLARIIONSPENCLOSURE]    Script Date: 6/29/2019 5:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLARIIONSPENCLOSURE](
	[RAID_ID] [bigint] NOT NULL,
	[ENCLOSURE_NAME] [varchar](250) NOT NULL,
	[ENCLOSURE_DRIVE_TYPE] [varchar](250) NOT NULL,
	[CURRENT_SPEED] [varchar](250) NOT NULL,
	[MAXIMUM_SPEED] [varchar](250) NOT NULL,
	[SP_A_STATE] [varchar](250) NOT NULL,
	[SP_B_STATE] [varchar](250) NULL,
	[POWER_A0_STATE] [varchar](250) NULL,
	[POWER_A1_STATE] [varchar](250) NULL,
	[POWER_B0_STATE] [varchar](250) NULL,
	[POWER_B1_STATE] [varchar](250) NULL,
	[SPS_A_STATE] [varchar](250) NOT NULL,
	[SPS_B_STATE] [varchar](250) NULL,
	[SPS_A_CABLING_STATE] [varchar](250) NOT NULL,
	[SPS_B_CABLING_STATE] [varchar](250) NULL,
	[CPU_MODULE_A_STATE] [varchar](250) NULL,
	[CPU_MODULE_B_STATE] [varchar](250) NULL,
	[DIMM_MODULE_A_STATE] [varchar](250) NOT NULL,
	[DIMM_MODULE_B_STATE] [varchar](250) NOT NULL,
	[MANAGEMENT_MODULE_A_STATE] [varchar](250) NOT NULL,
	[MANAGEMENT_MODULE_B_STATE] [varchar](250) NOT NULL,
	[SPA_MODULE_0_STATE] [varchar](250) NOT NULL,
	[SPA_MODULE_1_STATE] [varchar](250) NOT NULL,
	[SPA_MODULE_2_STATE] [varchar](250) NOT NULL,
	[SPA_MODULE_3_STATE] [varchar](250) NOT NULL,
	[SPA_MODULE_4_STATE] [varchar](250) NOT NULL,
	[SPB_MODULE_0_STATE] [varchar](250) NOT NULL,
	[SPB_MODULE_1_STATE] [varchar](250) NOT NULL,
	[SPB_MODULE_2_STATE] [varchar](250) NOT NULL,
	[SPB_MODULE_3_STATE] [varchar](250) NOT NULL,
	[SPB_MODULE_4_STATE] [varchar](250) NOT NULL,
 CONSTRAINT [CLARIIONSPENCLOSURE_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[ENCLOSURE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1597938104]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1597938104] ON [dbo].[CLARIIONSPENCLOSURE]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLARIIONSPENCLOSURE]  WITH CHECK ADD  CONSTRAINT [CLARIIONSPENCLOSURE_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[CLARIIONSPENCLOSURE] CHECK CONSTRAINT [CLARIIONSPENCLOSURE_FK]
GO
