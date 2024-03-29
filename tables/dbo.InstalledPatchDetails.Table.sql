USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InstalledPatchDetails]    Script Date: 6/29/2019 5:48:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstalledPatchDetails](
	[ID] [bigint] NOT NULL,
	[BUILD_NUMBER] [bigint] NOT NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[APPLIED_DATE] [datetime] NULL,
	[STATUS] [varchar](50) NOT NULL,
	[BUILD_TYPE] [varchar](50) NOT NULL,
 CONSTRAINT [InstalledPatchDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [InstalledPatchDetails_UK0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [InstalledPatchDetails_UK0] ON [dbo].[InstalledPatchDetails]
(
	[APPLIED_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InstalledPatchDetails] ADD  DEFAULT ('Hotfix') FOR [BUILD_TYPE]
GO
