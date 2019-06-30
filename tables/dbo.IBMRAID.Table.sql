USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMRAID]    Script Date: 6/29/2019 5:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMRAID](
	[DEVICE_ID] [bigint] NOT NULL,
	[RAID_NAME] [varchar](50) NOT NULL,
	[CACHE_MEMORY] [varchar](250) NULL,
	[NVS_MEMORY] [varchar](250) NULL,
	[PROCESSOR_MEMORY] [varchar](250) NULL,
 CONSTRAINT [IBMRAID_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2044762938]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2044762938] ON [dbo].[IBMRAID]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMRAID]  WITH CHECK ADD  CONSTRAINT [IBMRAID_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMRAID] CHECK CONSTRAINT [IBMRAID_FK]
GO
