USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidControllerHostSide]    Script Date: 6/29/2019 5:48:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidControllerHostSide](
	[DEVICE_ID] [bigint] NOT NULL,
	[MAX_QUEUED_IOCOUNT] [varchar](250) NOT NULL,
	[MIN_QUEUED_IOCOUNT] [varchar](250) NULL,
	[DEF_QUEUED_IOCOUNT] [varchar](250) NULL,
	[CUR_QUEUED_IOCOUNT] [varchar](250) NULL,
	[MAX_LUN_NUM] [varchar](250) NULL,
	[MIN_LUN_NUM] [varchar](250) NULL,
	[DEF_LUN_NUM] [varchar](250) NULL,
	[CUR_LUN_NUM] [varchar](250) NULL,
 CONSTRAINT [InfortrendRaidControllerHostSide_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__541556117]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__541556117] ON [dbo].[InfortrendRaidControllerHostSide]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidControllerHostSide]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidControllerHostSide_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidControllerHostSide] CHECK CONSTRAINT [InfortrendRaidControllerHostSide_FK1]
GO
