USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QualstarTapeLibraryFCInfo]    Script Date: 6/29/2019 5:50:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualstarTapeLibraryFCInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[FC_VALID] [varchar](250) NULL,
	[FC_TYPE] [varchar](250) NULL,
	[CURRENTLEVEL_3VOLT] [int] NULL,
	[CURRENTLEVEL_5VOLT] [int] NULL,
	[CURRENTLEVEL_12VOLT] [int] NULL,
	[CURRENT_FC_AIRTEMP] [int] NULL,
	[CURRENT_FC_CPUTEMP] [int] NULL,
	[FC_POS] [varchar](250) NOT NULL,
 CONSTRAINT [QualstarTapeLibraryFCInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[FC_POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__303608560]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__303608560] ON [dbo].[QualstarTapeLibraryFCInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QualstarTapeLibraryFCInfo]  WITH CHECK ADD  CONSTRAINT [QualstarTapeLibraryFCInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[QualstarTapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[QualstarTapeLibraryFCInfo] CHECK CONSTRAINT [QualstarTapeLibraryFCInfo_FK1]
GO
