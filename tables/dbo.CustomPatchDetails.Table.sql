USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomPatchDetails]    Script Date: 6/29/2019 5:46:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomPatchDetails](
	[ID] [bigint] NOT NULL,
	[BUILD_NUMBER] [bigint] NOT NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[APPLIED_DATE] [datetime] NULL,
	[STATUS] [varchar](50) NOT NULL,
	[BUILD_TYPE] [varchar](50) NOT NULL,
 CONSTRAINT [CustomPatchDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [CustomPatchDetails_UK0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [CustomPatchDetails_UK0] ON [dbo].[CustomPatchDetails]
(
	[APPLIED_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomPatchDetails] ADD  DEFAULT ('CustomPPM') FOR [BUILD_TYPE]
GO
