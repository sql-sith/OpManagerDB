USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LUNMultiPath]    Script Date: 6/29/2019 5:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUNMultiPath](
	[LUN_ID] [bigint] NOT NULL,
	[HBA_ID] [bigint] NULL,
	[SCSI_TARGETID] [bigint] NULL,
	[LUN_IDENTIFIER] [varchar](150) NULL,
	[CANONICAL_NAME] [varchar](150) NOT NULL,
	[LAST_UPDATED_TIME] [datetime] NULL,
	[PATH_STATUS] [int] NOT NULL,
	[PREFERRED_PATH] [bit] NULL,
 CONSTRAINT [LUNMultiPath_PK] PRIMARY KEY CLUSTERED 
(
	[LUN_ID] ASC,
	[CANONICAL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2140912999]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2140912999] ON [dbo].[LUNMultiPath]
(
	[HBA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LUNMultiPath]  WITH CHECK ADD  CONSTRAINT [LUNMultiPath_FK2] FOREIGN KEY([HBA_ID])
REFERENCES [dbo].[VHostHBAdapterProps] ([VHOSTHBA_ID])
GO
ALTER TABLE [dbo].[LUNMultiPath] CHECK CONSTRAINT [LUNMultiPath_FK2]
GO
