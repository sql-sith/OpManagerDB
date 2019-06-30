USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SubNetwork]    Script Date: 6/29/2019 5:52:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubNetwork](
	[NETID] [bigint] NOT NULL,
	[NETWORKADDRESS] [varchar](15) NOT NULL,
	[SUBNETMASKADDRESS] [varchar](15) NOT NULL,
	[HOSTIPSTART] [bigint] NOT NULL,
	[HOSTIPEND] [bigint] NOT NULL,
	[STATUS] [int] NOT NULL,
	[SUBNET_NAME] [varchar](50) NULL,
	[SUBNET_SIZE] [bigint] NULL,
	[SUBNET_DESC] [varchar](100) NULL,
	[VLAN_NAME] [varchar](50) NULL,
	[PHYSICAL_LOC] [varchar](100) NULL,
	[UNAME] [varchar](100) NULL,
	[ADDEDTIME] [datetime] NULL,
	[LAST_SCAN_TIME] [datetime] NULL,
	[SCAN_DETAILS] [varchar](4) NULL,
	[TASK_ID] [bigint] NOT NULL,
 CONSTRAINT [SubNetwork_PK] PRIMARY KEY CLUSTERED 
(
	[NETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [SubNetwork_UK1] UNIQUE NONCLUSTERED 
(
	[NETWORKADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [SubNetwork_IDX_1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [SubNetwork_IDX_1] ON [dbo].[SubNetwork]
(
	[HOSTIPSTART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [SubNetwork_IDX_2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [SubNetwork_IDX_2] ON [dbo].[SubNetwork]
(
	[HOSTIPEND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubNetwork] ADD  DEFAULT ('0') FOR [STATUS]
GO
ALTER TABLE [dbo].[SubNetwork] ADD  DEFAULT ('1110') FOR [SCAN_DETAILS]
GO
ALTER TABLE [dbo].[SubNetwork] ADD  DEFAULT ('2') FOR [TASK_ID]
GO
