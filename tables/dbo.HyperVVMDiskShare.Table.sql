USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HyperVVMDiskShare]    Script Date: 6/29/2019 5:48:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HyperVVMDiskShare](
	[VMID] [bigint] NOT NULL,
	[DISKNAME] [varchar](250) NOT NULL,
	[DISKPATH] [varchar](250) NOT NULL,
 CONSTRAINT [HyperVVMDiskShare_PK] PRIMARY KEY CLUSTERED 
(
	[VMID] ASC,
	[DISKNAME] ASC,
	[DISKPATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__101654450]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__101654450] ON [dbo].[HyperVVMDiskShare]
(
	[VMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HyperVVMDiskShare]  WITH CHECK ADD  CONSTRAINT [HyperVVMDiskShare_FK1] FOREIGN KEY([VMID])
REFERENCES [dbo].[HyperVVMProps] ([VMID])
GO
ALTER TABLE [dbo].[HyperVVMDiskShare] CHECK CONSTRAINT [HyperVVMDiskShare_FK1]
GO
