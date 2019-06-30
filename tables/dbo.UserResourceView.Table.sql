USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserResourceView]    Script Date: 6/29/2019 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserResourceView](
	[USER_ID] [bigint] NOT NULL,
	[VIEW_ID] [bigint] NOT NULL,
	[VIEW_NAME] [nvarchar](100) NOT NULL,
	[VIEW_RESOURCE] [nvarchar](256) NOT NULL,
	[DEFAULT_VIEWID] [bigint] NOT NULL,
	[CUSTOMER_ID] [nvarchar](100) NOT NULL,
 CONSTRAINT [UserResourceView_PK] PRIMARY KEY CLUSTERED 
(
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__493690554]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__493690554] ON [dbo].[UserResourceView]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserResourceView] ADD  DEFAULT ('-1') FOR [DEFAULT_VIEWID]
GO
ALTER TABLE [dbo].[UserResourceView] ADD  DEFAULT ('local') FOR [CUSTOMER_ID]
GO
ALTER TABLE [dbo].[UserResourceView]  WITH CHECK ADD  CONSTRAINT [UserResourceView_FK] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[UserResourceView] CHECK CONSTRAINT [UserResourceView_FK]
GO
