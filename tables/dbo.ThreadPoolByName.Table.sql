USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ThreadPoolByName]    Script Date: 6/29/2019 5:52:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadPoolByName](
	[NAME] [varchar](50) NOT NULL,
	[MAX_THREAD_COUNT] [bigint] NOT NULL,
	[MIN_THREAD_COUNT] [bigint] NOT NULL,
 CONSTRAINT [ThreadPoolByName_PK] PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ThreadPoolByName] ADD  DEFAULT ('5') FOR [MAX_THREAD_COUNT]
GO
ALTER TABLE [dbo].[ThreadPoolByName] ADD  DEFAULT ('1') FOR [MIN_THREAD_COUNT]
GO
