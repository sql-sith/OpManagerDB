USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FcFaSwitchSensor]    Script Date: 6/29/2019 5:47:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FcFaSwitchSensor](
	[SWITCH_ID] [bigint] NOT NULL,
	[SENSOR_ID] [bigint] NOT NULL,
	[SENSOR_INDEX] [int] NOT NULL,
	[SENSOR_TYPE] [varchar](250) NULL,
	[SENSOR_STATUS] [varchar](250) NULL,
	[CURRENT_VALUE] [varchar](250) NOT NULL,
 CONSTRAINT [FcFaSwitchSensor_PK] PRIMARY KEY CLUSTERED 
(
	[SENSOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_561703667]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_561703667] ON [dbo].[FcFaSwitchSensor]
(
	[SWITCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_561703668]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_561703668] ON [dbo].[FcFaSwitchSensor]
(
	[SENSOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FcFaSwitchSensor] ADD  DEFAULT ('Not Available') FOR [SENSOR_STATUS]
GO
ALTER TABLE [dbo].[FcFaSwitchSensor]  WITH CHECK ADD  CONSTRAINT [FcFaSwitchSensor_FK1] FOREIGN KEY([SWITCH_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[FcFaSwitchSensor] CHECK CONSTRAINT [FcFaSwitchSensor_FK1]
GO
ALTER TABLE [dbo].[FcFaSwitchSensor]  WITH CHECK ADD  CONSTRAINT [FcFaSwitchSensor_FK2] FOREIGN KEY([SENSOR_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[FcFaSwitchSensor] CHECK CONSTRAINT [FcFaSwitchSensor_FK2]
GO
