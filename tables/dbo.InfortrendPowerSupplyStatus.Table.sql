USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendPowerSupplyStatus]    Script Date: 6/29/2019 5:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendPowerSupplyStatus](
	[DEVICE_ID] [bigint] NOT NULL,
	[PS_INDEX] [int] NOT NULL,
	[PS_STATUS] [varchar](250) NULL,
 CONSTRAINT [InfortrendPowerSupplyStatus_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[PS_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_708787834]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_708787834] ON [dbo].[InfortrendPowerSupplyStatus]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendPowerSupplyStatus]  WITH CHECK ADD  CONSTRAINT [InfortrendPowerSupplyStatus_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendPowerSupplyStatus] CHECK CONSTRAINT [InfortrendPowerSupplyStatus_FK1]
GO
