USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwHostBusAdapters]    Script Date: 6/29/2019 5:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwHostBusAdapters](
	[VHOSTHBA_ID] [bigint] NOT NULL,
	[VHOST_ID] [bigint] NOT NULL,
	[HBA_DEVICE] [varchar](50) NOT NULL,
	[HBA_MODEL] [varchar](100) NOT NULL,
	[HBA_TYPE] [varchar](100) NOT NULL,
	[HBA_DRIVER] [varchar](100) NOT NULL,
	[HBA_STATUS] [varchar](30) NOT NULL,
	[BUS_NUMBER] [int] NOT NULL,
 CONSTRAINT [VwHostBusAdapters_PK] PRIMARY KEY CLUSTERED 
(
	[VHOSTHBA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwHostBusAdapters_UK0] UNIQUE NONCLUSTERED 
(
	[HBA_DEVICE] ASC,
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1008180104]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1008180104] ON [dbo].[VwHostBusAdapters]
(
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwHostBusAdapters]  WITH CHECK ADD  CONSTRAINT [VwHostBusAdapters_FK1] FOREIGN KEY([VHOST_ID])
REFERENCES [dbo].[VwHOSTPROPS] ([VHOST_ID])
GO
ALTER TABLE [dbo].[VwHostBusAdapters] CHECK CONSTRAINT [VwHostBusAdapters_FK1]
GO
