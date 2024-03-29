USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaid]    Script Date: 6/29/2019 5:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaid](
	[DEVICE_ID] [bigint] NOT NULL,
	[TEMP_SENSOR] [varchar](500) NULL,
	[UPS] [varchar](500) NULL,
	[BATTERY] [varchar](500) NULL,
	[VOLTAGE_SENSOR] [varchar](500) NULL,
	[CURRENT_SENSOR] [varchar](500) NULL,
	[DOOR] [varchar](500) NULL,
	[SPEAKER] [varchar](500) NULL,
	[SLOT] [varchar](500) NULL,
 CONSTRAINT [InfortrendRaid_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1288851376]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1288851376] ON [dbo].[InfortrendRaid]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaid]  WITH CHECK ADD  CONSTRAINT [InfortrendRaid_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaid] CHECK CONSTRAINT [InfortrendRaid_FK1]
GO
