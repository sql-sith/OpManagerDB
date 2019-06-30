USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VNXEnvironment]    Script Date: 6/29/2019 5:52:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VNXEnvironment](
	[RAID_ID] [bigint] NOT NULL,
	[COMPONENT_NAME] [varchar](250) NOT NULL,
	[POWER_STATUS] [varchar](250) NOT NULL,
	[PRESENT_POWER] [varchar](250) NOT NULL,
	[ROLLING_AVERAGE_POWER] [varchar](250) NOT NULL,
	[TEMPERATURE_STATUS] [varchar](250) NOT NULL,
	[PRESENT_TEMPERATURE] [varchar](250) NULL,
	[ROLLING_AVERAGE_TEMPERATURE] [varchar](250) NULL,
 CONSTRAINT [VNXEnvironment_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[COMPONENT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1619452111]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1619452111] ON [dbo].[VNXEnvironment]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VNXEnvironment]  WITH CHECK ADD  CONSTRAINT [VNXEnvironment_FK] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[VNXEnvironment] CHECK CONSTRAINT [VNXEnvironment_FK]
GO
