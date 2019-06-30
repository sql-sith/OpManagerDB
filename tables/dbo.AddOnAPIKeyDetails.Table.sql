USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AddOnAPIKeyDetails]    Script Date: 6/29/2019 5:45:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddOnAPIKeyDetails](
	[LOGIN_ID] [bigint] NOT NULL,
	[TECHNICIAN_KEY] [varchar](255) NOT NULL,
 CONSTRAINT [AddOnAPIKeyDetails_PK] PRIMARY KEY CLUSTERED 
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1675349497]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1675349497] ON [dbo].[AddOnAPIKeyDetails]
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AddOnAPIKeyDetails]  WITH CHECK ADD  CONSTRAINT [AddOnAPIKeyDetails_FK] FOREIGN KEY([LOGIN_ID])
REFERENCES [dbo].[FEED_LOGIN_PARAMS] ([LOGIN_ID])
GO
ALTER TABLE [dbo].[AddOnAPIKeyDetails] CHECK CONSTRAINT [AddOnAPIKeyDetails_FK]
GO
