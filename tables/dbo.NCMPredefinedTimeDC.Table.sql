USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMPredefinedTimeDC]    Script Date: 6/29/2019 5:49:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMPredefinedTimeDC](
	[ACCOUNT_ID] [bigint] NOT NULL,
	[VIEW_ID] [bigint] NOT NULL,
	[TIME] [varchar](20) NOT NULL,
 CONSTRAINT [NCMPredefinedTimeDC_PK] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC,
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1256805719]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1256805719] ON [dbo].[NCMPredefinedTimeDC]
(
	[ACCOUNT_ID] ASC,
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMPredefinedTimeDC]  WITH CHECK ADD  CONSTRAINT [NCMPredefinedTimeDC_FK1] FOREIGN KEY([ACCOUNT_ID], [VIEW_ID])
REFERENCES [dbo].[NCMUserViewDC] ([ACCOUNT_ID], [VIEW_ID])
GO
ALTER TABLE [dbo].[NCMPredefinedTimeDC] CHECK CONSTRAINT [NCMPredefinedTimeDC_FK1]
GO
