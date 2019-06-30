USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPMSAP2000TemperatureSensors]    Script Date: 6/29/2019 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPMSAP2000TemperatureSensors](
	[DEVICE_ID] [bigint] NOT NULL,
	[ELEMENT_NAME] [varchar](250) NOT NULL,
	[TEMPERATURE] [int] NULL,
	[UNITS] [varchar](250) NULL,
	[STATUS] [varchar](250) NULL,
 CONSTRAINT [HPMSAP2000TemperatureSensors_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ELEMENT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1191958908]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1191958908] ON [dbo].[HPMSAP2000TemperatureSensors]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPMSAP2000TemperatureSensors]  WITH CHECK ADD  CONSTRAINT [HPMSAP2000TemperatureSensors_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPMSAP2000TemperatureSensors] CHECK CONSTRAINT [HPMSAP2000TemperatureSensors_FK]
GO
