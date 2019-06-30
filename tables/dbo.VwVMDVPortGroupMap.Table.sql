USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwVMDVPortGroupMap]    Script Date: 6/29/2019 5:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwVMDVPortGroupMap](
	[VM_ID] [bigint] NOT NULL,
	[DVPORTGROUP_ID] [bigint] NOT NULL,
 CONSTRAINT [VwVMDVPortGroupMap_PK] PRIMARY KEY CLUSTERED 
(
	[VM_ID] ASC,
	[DVPORTGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1261130325]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1261130325] ON [dbo].[VwVMDVPortGroupMap]
(
	[VM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1261130326]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1261130326] ON [dbo].[VwVMDVPortGroupMap]
(
	[DVPORTGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwVMDVPortGroupMap]  WITH CHECK ADD  CONSTRAINT [VwVMDVPortGroupMap_FK1] FOREIGN KEY([VM_ID])
REFERENCES [dbo].[VwVMProps] ([VM_ID])
GO
ALTER TABLE [dbo].[VwVMDVPortGroupMap] CHECK CONSTRAINT [VwVMDVPortGroupMap_FK1]
GO
ALTER TABLE [dbo].[VwVMDVPortGroupMap]  WITH CHECK ADD  CONSTRAINT [VwVMDVPortGroupMap_FK2] FOREIGN KEY([DVPORTGROUP_ID])
REFERENCES [dbo].[VwDVPORTGROUPPROPS] ([DVPORTGROUP_ID])
GO
ALTER TABLE [dbo].[VwVMDVPortGroupMap] CHECK CONSTRAINT [VwVMDVPortGroupMap_FK2]
GO
