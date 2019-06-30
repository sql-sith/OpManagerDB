USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMResourceDraft]    Script Date: 6/29/2019 5:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMResourceDraft](
	[RESOURCEID] [bigint] NOT NULL,
	[DRAFT_ID] [int] NOT NULL,
 CONSTRAINT [NCMResourceDraft_PK] PRIMARY KEY CLUSTERED 
(
	[DRAFT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1898853800]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1898853800] ON [dbo].[NCMResourceDraft]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1898853801]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1898853801] ON [dbo].[NCMResourceDraft]
(
	[DRAFT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMResourceDraft]  WITH CHECK ADD  CONSTRAINT [NCMResourceDraft_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMDevices] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMResourceDraft] CHECK CONSTRAINT [NCMResourceDraft_FK1]
GO
ALTER TABLE [dbo].[NCMResourceDraft]  WITH CHECK ADD  CONSTRAINT [NCMResourceDraft_FK2] FOREIGN KEY([DRAFT_ID])
REFERENCES [dbo].[NCMDraft] ([DRAFT_ID])
GO
ALTER TABLE [dbo].[NCMResourceDraft] CHECK CONSTRAINT [NCMResourceDraft_FK2]
GO
