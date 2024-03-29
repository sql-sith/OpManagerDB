USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QualstarTapeLibrarySlotInfo]    Script Date: 6/29/2019 5:50:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualstarTapeLibrarySlotInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[SLOT_INDEX] [int] NOT NULL,
	[BARCODE_LABEL] [varchar](250) NULL,
	[SLOTTAPE_SOURCE] [int] NULL,
	[SLOT_PHY_INVENTORY] [varchar](250) NULL,
	[SLOT_SCSI_INVENTORY] [varchar](250) NULL,
 CONSTRAINT [QualstarTapeLibrarySlotInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[SLOT_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_524583793]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_524583793] ON [dbo].[QualstarTapeLibrarySlotInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QualstarTapeLibrarySlotInfo]  WITH CHECK ADD  CONSTRAINT [QualstarTapeLibrarySlotInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[QualstarTapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[QualstarTapeLibrarySlotInfo] CHECK CONSTRAINT [QualstarTapeLibrarySlotInfo_FK1]
GO
