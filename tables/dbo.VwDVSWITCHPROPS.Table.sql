USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwDVSWITCHPROPS]    Script Date: 6/29/2019 5:53:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwDVSWITCHPROPS](
	[DVSWITCH_ID] [bigint] NOT NULL,
	[VCENTER_ID] [bigint] NOT NULL,
	[UUID] [varchar](100) NOT NULL,
	[MAX_PORTS] [int] NOT NULL,
	[NO_OF_PORTS] [int] NOT NULL,
	[VENDOR_NAME] [varchar](100) NOT NULL,
	[IPADDRESS] [varchar](50) NULL,
 CONSTRAINT [VwDVSWITCHPROPS_PK] PRIMARY KEY CLUSTERED 
(
	[DVSWITCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwDVSWITCHPROPS_UK0] UNIQUE NONCLUSTERED 
(
	[UUID] ASC,
	[VCENTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1101663318]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1101663318] ON [dbo].[VwDVSWITCHPROPS]
(
	[DVSWITCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1101663319]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1101663319] ON [dbo].[VwDVSWITCHPROPS]
(
	[VCENTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwDVSWITCHPROPS]  WITH CHECK ADD  CONSTRAINT [VwDVSWITCHPROPS_FK1] FOREIGN KEY([DVSWITCH_ID])
REFERENCES [dbo].[VwENTITYMOMAPPING] ([ENTITY_ID])
GO
ALTER TABLE [dbo].[VwDVSWITCHPROPS] CHECK CONSTRAINT [VwDVSWITCHPROPS_FK1]
GO
ALTER TABLE [dbo].[VwDVSWITCHPROPS]  WITH CHECK ADD  CONSTRAINT [VwDVSWITCHPROPS_FK2] FOREIGN KEY([VCENTER_ID])
REFERENCES [dbo].[VwVCENTERPROPS] ([VCENTER_ID])
GO
ALTER TABLE [dbo].[VwDVSWITCHPROPS] CHECK CONSTRAINT [VwDVSWITCHPROPS_FK2]
GO
