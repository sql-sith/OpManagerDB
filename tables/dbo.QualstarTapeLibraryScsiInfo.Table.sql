USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QualstarTapeLibraryScsiInfo]    Script Date: 6/29/2019 5:50:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualstarTapeLibraryScsiInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[SCSI_PRESENT] [varchar](250) NULL,
	[SCSI_DISCONNECT] [varchar](250) NULL,
	[SCSI_ENABLED] [varchar](250) NULL,
	[SCSI_ID] [int] NULL,
	[SCSI_LUN] [varchar](250) NULL,
	[SCSI_PARITY] [varchar](250) NULL,
	[SCSI_SYNCHRONOUS] [varchar](250) NULL,
	[SCSI_INTERFACE] [varchar](250) NULL,
	[SCSI_POS] [varchar](250) NOT NULL,
 CONSTRAINT [QualstarTapeLibraryScsiInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[SCSI_POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1433352729]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1433352729] ON [dbo].[QualstarTapeLibraryScsiInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QualstarTapeLibraryScsiInfo]  WITH CHECK ADD  CONSTRAINT [QualstarTapeLibraryScsiInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[QualstarTapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[QualstarTapeLibraryScsiInfo] CHECK CONSTRAINT [QualstarTapeLibraryScsiInfo_FK1]
GO
