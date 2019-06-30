USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ChassisToFanModule]    Script Date: 6/29/2019 5:46:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChassisToFanModule](
	[CHASSIS_ID] [bigint] NOT NULL,
	[FAN_MODULE_ID] [bigint] NOT NULL,
 CONSTRAINT [ChassisToFanModule_PK] PRIMARY KEY CLUSTERED 
(
	[CHASSIS_ID] ASC,
	[FAN_MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__45794933]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__45794933] ON [dbo].[ChassisToFanModule]
(
	[FAN_MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__555666586]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__555666586] ON [dbo].[ChassisToFanModule]
(
	[CHASSIS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChassisToFanModule]  WITH CHECK ADD  CONSTRAINT [ChassisToFanModule_FK] FOREIGN KEY([CHASSIS_ID])
REFERENCES [dbo].[ChassisDetails] ([CHASSIS_ID])
GO
ALTER TABLE [dbo].[ChassisToFanModule] CHECK CONSTRAINT [ChassisToFanModule_FK]
GO
ALTER TABLE [dbo].[ChassisToFanModule]  WITH CHECK ADD  CONSTRAINT [ChassisToFanModule_FK1] FOREIGN KEY([FAN_MODULE_ID])
REFERENCES [dbo].[UCSFanModule] ([FAN_MODULE_ID])
GO
ALTER TABLE [dbo].[ChassisToFanModule] CHECK CONSTRAINT [ChassisToFanModule_FK1]
GO
