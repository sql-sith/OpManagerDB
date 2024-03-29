USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMSharedProfile]    Script Date: 6/29/2019 5:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMSharedProfile](
	[PROFILEID] [bigint] NOT NULL,
	[PROFILENAME] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[ISSNMPPROFILE] [bit] NOT NULL,
 CONSTRAINT [NCMSharedProfile_PK] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [NCMSharedProfile_UK0] UNIQUE NONCLUSTERED 
(
	[PROFILENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMSharedProfile] ADD  DEFAULT ('NO_DESCRIPTION_AVAILABLE') FOR [DESCRIPTION]
GO
ALTER TABLE [dbo].[NCMSharedProfile] ADD  DEFAULT ((0)) FOR [ISSNMPPROFILE]
GO
