USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPEVADiskEnclosureSensor]    Script Date: 6/29/2019 5:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPEVADiskEnclosureSensor](
	[DEVICE_ID] [bigint] NOT NULL,
	[ENCLOSURE_NAME] [varchar](160) NOT NULL,
	[SENSOR_NAME] [varchar](160) NOT NULL,
	[SENSOR_STATUS] [varchar](250) NULL,
	[SENSOR_TMP] [varchar](250) NULL,
	[SENSOR_SEVERITY] [varchar](250) NULL,
 CONSTRAINT [HPEVADISKENCLOSURESENSOR_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ENCLOSURE_NAME] ASC,
	[SENSOR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_896530292]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_896530292] ON [dbo].[HPEVADiskEnclosureSensor]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPEVADiskEnclosureSensor]  WITH CHECK ADD  CONSTRAINT [HPEVADISKENCLOSURESENSOR_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[HPEVARaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPEVADiskEnclosureSensor] CHECK CONSTRAINT [HPEVADISKENCLOSURESENSOR_FK1]
GO
