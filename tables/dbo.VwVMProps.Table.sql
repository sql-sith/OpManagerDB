USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwVMProps]    Script Date: 6/29/2019 5:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwVMProps](
	[VM_ID] [bigint] NOT NULL,
	[VCENTER_ID] [bigint] NOT NULL,
	[UUID] [varchar](150) NOT NULL,
	[INSTANCE_UUID] [varchar](150) NOT NULL,
	[VHOST_ID] [bigint] NULL,
	[PATH_NAME] [varchar](200) NULL,
	[OS_NAME] [varchar](255) NULL,
	[TOOLS_VERSION] [varchar](50) NULL,
	[NUM_VCPU] [int] NULL,
	[NUM_VDISK] [int] NULL,
	[NUM_ETHERNET] [int] NULL,
	[VM_POWERSTATE] [varchar](50) NOT NULL,
	[VM_CONNECTIONSTATE] [varchar](50) NOT NULL,
	[MAX_CPU_MHZ] [int] NULL,
	[MAX_MEMORY_MB] [int] NULL,
	[MEM_OVERHEAD_MB] [bigint] NULL,
	[MEMORY_MB] [int] NULL,
	[VM_BOOTUPTIME] [datetime] NULL,
	[LASTUPDATEDTIME] [datetime] NULL,
	[IS_ORPHANED] [bit] NULL,
 CONSTRAINT [VwVMProps_PK] PRIMARY KEY CLUSTERED 
(
	[VM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwVMProps_UK0] UNIQUE NONCLUSTERED 
(
	[UUID] ASC,
	[INSTANCE_UUID] ASC,
	[VCENTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2141131333]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2141131333] ON [dbo].[VwVMProps]
(
	[VM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2141131334]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2141131334] ON [dbo].[VwVMProps]
(
	[VCENTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwVMProps] ADD  DEFAULT ('-1') FOR [VHOST_ID]
GO
ALTER TABLE [dbo].[VwVMProps] ADD  DEFAULT ((0)) FOR [IS_ORPHANED]
GO
ALTER TABLE [dbo].[VwVMProps]  WITH CHECK ADD  CONSTRAINT [VwVMProps_FK1] FOREIGN KEY([VM_ID])
REFERENCES [dbo].[VwENTITYMOMAPPING] ([ENTITY_ID])
GO
ALTER TABLE [dbo].[VwVMProps] CHECK CONSTRAINT [VwVMProps_FK1]
GO
ALTER TABLE [dbo].[VwVMProps]  WITH CHECK ADD  CONSTRAINT [VwVMProps_FK2] FOREIGN KEY([VCENTER_ID])
REFERENCES [dbo].[VwVCENTERPROPS] ([VCENTER_ID])
GO
ALTER TABLE [dbo].[VwVMProps] CHECK CONSTRAINT [VwVMProps_FK2]
GO
