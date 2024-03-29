USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidLogicalVolume]    Script Date: 6/29/2019 5:48:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidLogicalVolume](
	[DEVICE_ID] [bigint] NOT NULL,
	[LV_INDEX] [int] NOT NULL,
	[LV_ID] [varchar](250) NOT NULL,
	[LV_SIZE] [varchar](250) NULL,
	[LV_ASSIGNMENT] [varchar](250) NULL,
	[LV_LDCOUNT] [int] NULL,
	[LV_LDLIST] [varchar](500) NULL,
 CONSTRAINT [InfortrendRaidLogicalVolume_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[LV_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1004014931]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1004014931] ON [dbo].[InfortrendRaidLogicalVolume]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidLogicalVolume]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidLogicalVolume_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidLogicalVolume] CHECK CONSTRAINT [InfortrendRaidLogicalVolume_FK1]
GO
