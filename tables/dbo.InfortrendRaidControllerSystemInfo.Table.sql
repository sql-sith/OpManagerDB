USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidControllerSystemInfo]    Script Date: 6/29/2019 5:48:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidControllerSystemInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[CPU_TYPE] [varchar](250) NULL,
	[CACHE_SIZE] [int] NULL,
	[MEMORY_TYPE] [varchar](250) NULL,
	[BR_ENGINEER_VERSION] [int] NULL,
	[CONTROLLER_NAME] [varchar](250) NULL,
	[WRITE_BACK_STATUS] [varchar](250) NULL,
	[MOTOR_SPINUP] [varchar](250) NULL,
	[POWERUP_SCSIRESET] [varchar](250) NULL,
	[BATTERY_BACKUP] [varchar](250) NULL,
	[RCC] [varchar](250) NULL,
	[LUN_ASSIGNMENT] [varchar](250) NULL,
	[SUPPORT_SCSILUN] [varchar](250) NULL,
	[SPANNING_LD] [varchar](250) NULL,
	[CONTROLLER_ID] [varchar](250) NULL,
 CONSTRAINT [InfortrendRaidControllerSystemInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1293461513]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1293461513] ON [dbo].[InfortrendRaidControllerSystemInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidControllerSystemInfo]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidControllerSystemInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidControllerSystemInfo] CHECK CONSTRAINT [InfortrendRaidControllerSystemInfo_FK1]
GO
