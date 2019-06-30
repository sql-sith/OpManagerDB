USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SpectraLogicLibraryPartition]    Script Date: 6/29/2019 5:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpectraLogicLibraryPartition](
	[DEVICE_ID] [bigint] NOT NULL,
	[PARTITION_INDEX] [int] NOT NULL,
	[PARTITION_NAME] [varchar](250) NOT NULL,
	[TOTAL_AVAILABLE_DRIVES] [int] NOT NULL,
	[LOADED_DRIVES] [int] NOT NULL,
	[TOTAL_AVAILABLE_STORAGE_SLOTS] [int] NOT NULL,
	[FULL_STORAGE_SLOTS] [int] NOT NULL,
	[TOTAL_AVAILABLE_ENTRY_EXIT_SLOTS] [int] NOT NULL,
	[FULL_ENTRY_EXIT_SLOTS] [int] NOT NULL,
 CONSTRAINT [SPECTRALOGICTAPELIBRARYPARTITION_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[PARTITION_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_834479828]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_834479828] ON [dbo].[SpectraLogicLibraryPartition]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SpectraLogicLibraryPartition]  WITH CHECK ADD  CONSTRAINT [SPECTRALOGICTAPELIBRARYPARTITION_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[TapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SpectraLogicLibraryPartition] CHECK CONSTRAINT [SPECTRALOGICTAPELIBRARYPARTITION_FK1]
GO
