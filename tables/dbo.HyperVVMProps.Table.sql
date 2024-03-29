USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HyperVVMProps]    Script Date: 6/29/2019 5:48:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HyperVVMProps](
	[VMID] [bigint] NOT NULL,
	[HOSTID] [bigint] NOT NULL,
	[VMNAME] [varchar](250) NOT NULL,
	[OSTYPE] [varchar](100) NULL,
	[OSNAME] [varchar](100) NULL,
	[UUID] [varchar](250) NULL,
	[POWERSTATE] [varchar](100) NOT NULL,
	[MAXCPUALLOCATIONMHZ] [bigint] NULL,
	[MAXMEMALLOCATIONMB] [bigint] NULL,
	[MEMCAPACITYMB] [bigint] NULL,
	[NUMOFVCPUS] [int] NULL,
	[NUMOFVDISKS] [int] NULL,
	[NUMOFNICS] [int] NULL,
	[VHD_FILEPATH] [varchar](250) NULL,
	[MARKFORDELETE] [bit] NOT NULL,
	[LASTSYSUPTIME] [datetime] NULL,
	[LASTUPDATEDTIME] [datetime] NULL,
 CONSTRAINT [HyperVVMProps_PK] PRIMARY KEY CLUSTERED 
(
	[VMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1380240892]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1380240892] ON [dbo].[HyperVVMProps]
(
	[VMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1380240893]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1380240893] ON [dbo].[HyperVVMProps]
(
	[HOSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HyperVVMProps]  WITH CHECK ADD  CONSTRAINT [HyperVVMProps_FK1] FOREIGN KEY([VMID])
REFERENCES [dbo].[HyperVEntityMOMap] ([ENTITYID])
GO
ALTER TABLE [dbo].[HyperVVMProps] CHECK CONSTRAINT [HyperVVMProps_FK1]
GO
ALTER TABLE [dbo].[HyperVVMProps]  WITH CHECK ADD  CONSTRAINT [HyperVVMProps_FK2] FOREIGN KEY([HOSTID])
REFERENCES [dbo].[HyperVHostProps] ([HOSTID])
GO
ALTER TABLE [dbo].[HyperVVMProps] CHECK CONSTRAINT [HyperVVMProps_FK2]
GO
