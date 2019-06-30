USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VHostProps]    Script Date: 6/29/2019 5:52:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VHostProps](
	[VHOST_ID] [bigint] NOT NULL,
	[VHOST_NAME] [varchar](250) NULL,
	[VHOST_DNS_NAME] [varchar](253) NULL,
	[VHOST_STATUS] [int] NULL,
	[WEBSERVICE_CONNECTSTATUS] [int] NULL,
	[SPOLLMISSED_COUNT] [int] NULL,
	[WEBSERVICE_STATUS_UPDATEDTIME] [datetime] NULL,
	[VHOST_VERSION] [varchar](50) NULL,
	[VHOST_BUILDNUMBER] [varchar](50) NULL,
	[VENDOR_NAME] [varchar](255) NULL,
	[HARDWARE_VENDOR] [varchar](50) NULL,
	[UUID] [varchar](50) NULL,
	[CONNECTION_STATUS] [int] NULL,
	[POWER_STATE] [int] NULL,
	[MAINTENANCE_MODE_ON] [bit] NULL,
	[LAST_SYSUPTIME] [datetime] NULL,
	[LAST_UPDATED_TIME] [datetime] NULL,
	[CPU_MODEL] [varchar](100) NULL,
	[NUM_PHYCPU_CORES] [int] NULL,
	[NUM_LOGICAL_PROCESSORS] [int] NULL,
	[AVG_CPUSPEED_MHZ] [int] NULL,
	[TOTAL_MEM_CAPACITYMB] [int] NULL,
	[NUM_HBA] [int] NULL,
	[NUM_NIC] [int] NULL,
	[VCENTER_ID] [bigint] NULL,
	[MANAGEMENT_SERVER] [varchar](100) NULL,
	[MONITORED_FROM_MGMT_SERVER] [bit] NOT NULL,
	[MOR_ID] [varchar](50) NULL,
	[VHOST_TYPE] [varchar](20) NULL,
 CONSTRAINT [VHostProps_PK] PRIMARY KEY CLUSTERED 
(
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_746701631]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_746701631] ON [dbo].[VHostProps]
(
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VHostProps] ADD  DEFAULT ('0') FOR [WEBSERVICE_CONNECTSTATUS]
GO
ALTER TABLE [dbo].[VHostProps] ADD  DEFAULT ('0') FOR [SPOLLMISSED_COUNT]
GO
ALTER TABLE [dbo].[VHostProps] ADD  DEFAULT ((0)) FOR [MONITORED_FROM_MGMT_SERVER]
GO
ALTER TABLE [dbo].[VHostProps]  WITH CHECK ADD  CONSTRAINT [VHostProps_FK1] FOREIGN KEY([VHOST_ID])
REFERENCES [dbo].[VIEntity] ([ENTITY_ID])
GO
ALTER TABLE [dbo].[VHostProps] CHECK CONSTRAINT [VHostProps_FK1]
GO
