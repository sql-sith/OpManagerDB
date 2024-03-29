USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPEVARaidDiskGroup]    Script Date: 6/29/2019 5:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPEVARaidDiskGroup](
	[DEVICE_ID] [bigint] NOT NULL,
	[DISKGROUP_NAME] [varchar](250) NOT NULL,
	[OPER_STATE] [varchar](250) NULL,
	[TOTAL_DISKS] [varchar](250) NULL,
	[TOTAL_CAPACITY] [varchar](250) NULL,
	[OCCUPANCY] [varchar](250) NULL,
	[OCCUPANCY_ALARMLEVEL] [varchar](250) NULL,
	[DISKGROUP_DISKTYPE] [varchar](250) NULL,
	[DISKFAILURE_PROTECTIONLEVEL] [varchar](250) NULL,
	[ACTUAL_PROTECTIONLEVEL] [varchar](250) NULL,
	[REQUESTED_PROTECTIONLEVEL] [varchar](250) NULL,
	[LEVELING_STATE] [varchar](250) NULL,
	[LEVELING_PROGRESS] [varchar](250) NULL,
	[RSS_DISKSTATE] [varchar](250) NULL,
	[COMMENTS] [varchar](250) NULL,
	[ID] [varchar](250) NULL,
 CONSTRAINT [HPEVARAIDDISKGROUP_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[DISKGROUP_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1591510211]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1591510211] ON [dbo].[HPEVARaidDiskGroup]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPEVARaidDiskGroup]  WITH CHECK ADD  CONSTRAINT [HPEVARAIDDISKGROUP_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[HPEVARaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPEVARaidDiskGroup] CHECK CONSTRAINT [HPEVARAIDDISKGROUP_FK1]
GO
