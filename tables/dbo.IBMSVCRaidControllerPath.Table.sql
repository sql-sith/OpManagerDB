USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMSVCRaidControllerPath]    Script Date: 6/29/2019 5:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMSVCRaidControllerPath](
	[CONTROLLER_PATH_ID] [bigint] NOT NULL,
	[DEVICE_ID] [bigint] NOT NULL,
	[CONTROLLER_ID] [bigint] NOT NULL,
	[WWPN] [varchar](250) NULL,
	[PATH_COUNT] [varchar](250) NULL,
	[MAX_PATH_COUNT] [varchar](250) NULL,
 CONSTRAINT [IBMSVCRaidController_PK] PRIMARY KEY CLUSTERED 
(
	[CONTROLLER_PATH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1983847521]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1983847521] ON [dbo].[IBMSVCRaidControllerPath]
(
	[CONTROLLER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMSVCRaidControllerPath]  WITH CHECK ADD  CONSTRAINT [IBMSVCRaidController_FK1] FOREIGN KEY([CONTROLLER_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMSVCRaidControllerPath] CHECK CONSTRAINT [IBMSVCRaidController_FK1]
GO
