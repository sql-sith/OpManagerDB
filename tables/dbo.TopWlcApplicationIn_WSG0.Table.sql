USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TopWlcApplicationIn_WSG0]    Script Date: 6/29/2019 5:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopWlcApplicationIn_WSG0](
	[ID] [bigint] NOT NULL,
	[RID] [int] NOT NULL,
	[NBAR_APP_ID] [bigint] NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
 CONSTRAINT [TopwlcinApplication_PKZ_WSG0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [TopwlcinApplication_IDX0_WSG0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [TopwlcinApplication_IDX0_WSG0] ON [dbo].[TopWlcApplicationIn_WSG0]
(
	[RID] ASC,
	[NBAR_APP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
