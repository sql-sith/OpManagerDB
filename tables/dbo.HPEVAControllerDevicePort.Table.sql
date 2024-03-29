USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPEVAControllerDevicePort]    Script Date: 6/29/2019 5:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPEVAControllerDevicePort](
	[DEVICE_ID] [bigint] NOT NULL,
	[DEVICEPORT_NAME] [varchar](250) NOT NULL,
	[WWID] [varchar](250) NULL,
	[LOOP_ID] [varchar](250) NULL,
	[OPER_STATE] [varchar](250) NULL,
	[LOOP_ALPA] [varchar](250) NULL,
 CONSTRAINT [HPEVACONTROLLERDEVICEPORT_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[DEVICEPORT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1724030488]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1724030488] ON [dbo].[HPEVAControllerDevicePort]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPEVAControllerDevicePort]  WITH CHECK ADD  CONSTRAINT [HPEVACONTROLLERDEVICEPORT_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[HPEVARaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPEVAControllerDevicePort] CHECK CONSTRAINT [HPEVACONTROLLERDEVICEPORT_FK1]
GO
