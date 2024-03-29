USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidLogicalDrive]    Script Date: 6/29/2019 5:48:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidLogicalDrive](
	[DEVICE_ID] [bigint] NOT NULL,
	[LD_INDEX] [int] NOT NULL,
	[LD_ID] [varchar](250) NOT NULL,
	[LD_SIZE] [varchar](250) NULL,
	[LD_ASSIGNMENT] [varchar](250) NULL,
	[LD_RAIDLEVEL] [varchar](250) NULL,
	[LD_STATUS] [varchar](500) NULL,
	[LD_STATE] [varchar](500) NULL,
	[LD_TOTALDRVCOUNT] [int] NULL,
	[LD_ONLINEDRVCOUNT] [int] NULL,
	[LD_SPAREDRVCOUNT] [int] NULL,
	[LD_FAILEDDRVCOUNT] [int] NULL,
 CONSTRAINT [InfortrendRaidLogicalDrive_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[LD_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_729012689]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_729012689] ON [dbo].[InfortrendRaidLogicalDrive]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidLogicalDrive]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidLogicalDrive_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidLogicalDrive] CHECK CONSTRAINT [InfortrendRaidLogicalDrive_FK1]
GO
