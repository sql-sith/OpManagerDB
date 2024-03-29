USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMDSRaid]    Script Date: 6/29/2019 5:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMDSRaid](
	[RAID_ID] [bigint] NOT NULL,
	[OPERATIONAL_STATUS] [varchar](250) NOT NULL,
	[CACHE_MEMORY] [varchar](250) NOT NULL,
	[NVS_MEMORY] [varchar](250) NOT NULL,
	[PROCESSOR_MEMORY] [varchar](250) NOT NULL,
	[IPADDRESSV4HMC] [varchar](250) NOT NULL,
	[MTMS] [varchar](250) NOT NULL,
	[MACHINE_SIGNATURE] [varchar](250) NOT NULL,
	[NODE_WWN] [varchar](250) NOT NULL,
 CONSTRAINT [IBMDSRaid_PK1] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__941857574]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__941857574] ON [dbo].[IBMDSRaid]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMDSRaid]  WITH CHECK ADD  CONSTRAINT [IBMDSRaid_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMDSRaid] CHECK CONSTRAINT [IBMDSRaid_FK1]
GO
