USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Stream]    Script Date: 6/29/2019 5:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stream](
	[SID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[SALIAS] [varchar](255) NOT NULL,
	[CTGY] [int] NOT NULL,
	[TYPE] [int] NOT NULL,
	[PROCESSMODE] [int] NULL,
	[INSERTMODE] [int] NULL,
	[STREAMTO] [int] NULL,
	[MAXSIZE] [int] NULL,
	[MAXSPAN] [int] NULL,
	[MAXPENDING] [int] NULL,
	[TRANSFORMLET_NAME] [varchar](500) NULL,
	[THRESHOLDLET_NAME] [varchar](500) NULL,
	[RESOURCEMAPLET_NAME] [varchar](500) NULL,
	[DBMAPLET_NAME] [varchar](500) NULL,
	[COMPARATOR_NAME] [varchar](500) NULL,
	[RATIONALIZELET_NAME] [varchar](500) NULL,
	[STATUS] [int] NOT NULL,
	[DESP] [varchar](500) NULL,
 CONSTRAINT [Stream_PK] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Stream_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Stream_UK1] UNIQUE NONCLUSTERED 
(
	[SALIAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Stream] ADD  DEFAULT ('0') FOR [TYPE]
GO
ALTER TABLE [dbo].[Stream] ADD  DEFAULT ('1') FOR [STATUS]
GO
