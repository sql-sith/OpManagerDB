USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ApplicationCriteria]    Script Date: 6/29/2019 5:46:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationCriteria](
	[PP_ID] [int] NOT NULL,
	[PROFILE_ID] [int] NOT NULL,
	[APPLN_NAME] [varchar](255) NOT NULL,
 CONSTRAINT [ApplicationCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[PP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1843346005]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1843346005] ON [dbo].[ApplicationCriteria]
(
	[PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationCriteria]  WITH CHECK ADD  CONSTRAINT [ApplicationCriteria_FK] FOREIGN KEY([PROFILE_ID])
REFERENCES [dbo].[AlertProfile] ([PROFILE_ID])
GO
ALTER TABLE [dbo].[ApplicationCriteria] CHECK CONSTRAINT [ApplicationCriteria_FK]
GO
