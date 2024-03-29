USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BusinessViewDetails]    Script Date: 6/29/2019 5:46:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessViewDetails](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[GROUPNAME] [varchar](255) NOT NULL,
	[ISOLDBV] [bit] NOT NULL,
 CONSTRAINT [BusinessViewDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [BusinessViewDetails_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [BusinessViewDetails_UK1] UNIQUE NONCLUSTERED 
(
	[GROUPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BusinessViewDetails] ADD  DEFAULT ((0)) FOR [ISOLDBV]
GO
