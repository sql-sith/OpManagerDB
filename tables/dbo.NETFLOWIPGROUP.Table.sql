USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NETFLOWIPGROUP]    Script Date: 6/29/2019 5:49:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETFLOWIPGROUP](
	[IPGROUPS_GROUP_ID] [int] NOT NULL,
	[IP_GROUP_NAME] [varchar](255) NOT NULL,
	[IP_GROUP_DESC] [varchar](500) NULL,
	[IP_GROUP_SPEED] [bigint] NOT NULL,
	[IP_GROUP_STATE] [int] NOT NULL,
	[DATASPACE] [varchar](32) NOT NULL,
	[IS_TOPSITES] [int] NOT NULL,
	[IP_ID] [int] NOT NULL,
	[GRPIPADDRESS_GROUP_ID] [int] NOT NULL,
	[ADDR_ID] [bigint] NOT NULL,
	[GRPIPADDRESS_EXCL] [int] NOT NULL,
	[ID_NET] [int] NULL,
	[GRPIPNETWORK_GROUP_ID] [int] NULL,
	[NETWORK_ADDR_ID] [bigint] NULL,
	[NETMASK_ADDR_ID] [bigint] NULL,
	[GRPIPNETWORK_EXCL] [int] NULL,
	[ID] [int] NULL,
	[GRPIPRANGE_IP_GROUP_ID] [int] NULL,
	[START_ADDR_ID] [bigint] NULL,
	[END_ADDR_ID] [bigint] NULL,
	[GRPIPRANGE_NETMASK_ADDR_ID] [bigint] NULL,
	[GRPIPRANGE_EXCL] [int] NULL,
	[GRPAPPID_ID] [int] NULL,
	[GRPAPPID_IP_GROUP_ID] [int] NULL,
	[APP_ID] [int] NULL,
	[GRPINTERFACE_ID] [int] NULL,
	[GRPINTERFACE_IP_GROUP_ID] [int] NULL,
	[INTERFACE_ID] [int] NULL,
	[GRPDSCP_ID] [int] NULL,
	[GRPDSCP_IP_GROUP_ID] [int] NULL,
	[DSCP] [int] NULL,
	[NODEVIPGROUPS_IP_GROUP_ID] [int] NULL,
	[LASTUPDATEDTIME] [datetime] NULL,
	[PROBEID] [bigint] NULL,
	[UNIQUEID] [bigint] NOT NULL,
 CONSTRAINT [NETFLOWIPGROUP_PK] PRIMARY KEY CLUSTERED 
(
	[UNIQUEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NETFLOWIPGROUP] ADD  DEFAULT ('1000000') FOR [IP_GROUP_SPEED]
GO
ALTER TABLE [dbo].[NETFLOWIPGROUP] ADD  DEFAULT ('0') FOR [IP_GROUP_STATE]
GO
ALTER TABLE [dbo].[NETFLOWIPGROUP] ADD  DEFAULT ('0') FOR [IS_TOPSITES]
GO
ALTER TABLE [dbo].[NETFLOWIPGROUP] ADD  DEFAULT ('0') FOR [PROBEID]
GO
