USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BillDeviceMap]    Script Date: 6/29/2019 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDeviceMap](
	[PLAN_ID] [int] NOT NULL,
	[DEVICE_ID] [int] NOT NULL,
	[DEVICE_TYPE] [int] NOT NULL,
 CONSTRAINT [BillDeviceMap_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1583811955]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1583811955] ON [dbo].[BillDeviceMap]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1583811956]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1583811956] ON [dbo].[BillDeviceMap]
(
	[PLAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillDeviceMap]  WITH CHECK ADD  CONSTRAINT [BillDeviceMap_FK1] FOREIGN KEY([PLAN_ID])
REFERENCES [dbo].[BillPlan] ([PLAN_ID])
GO
ALTER TABLE [dbo].[BillDeviceMap] CHECK CONSTRAINT [BillDeviceMap_FK1]
GO
ALTER TABLE [dbo].[BillDeviceMap]  WITH CHECK ADD  CONSTRAINT [BillDeviceMap_FK2] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[BillDeviceMap] CHECK CONSTRAINT [BillDeviceMap_FK2]
GO
