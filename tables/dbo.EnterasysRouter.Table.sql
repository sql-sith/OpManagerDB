USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EnterasysRouter]    Script Date: 6/29/2019 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnterasysRouter](
	[RESOURCEID] [bigint] NOT NULL,
	[PROCESSOR] [varchar](50) NOT NULL,
	[RAM_SIZE] [varchar](15) NOT NULL,
	[FLASH_SIZE] [varchar](15) NOT NULL,
 CONSTRAINT [EnterasysRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1655284410]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1655284410] ON [dbo].[EnterasysRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EnterasysRouter] ADD  DEFAULT ('Not Available') FOR [PROCESSOR]
GO
ALTER TABLE [dbo].[EnterasysRouter] ADD  DEFAULT ('Not Available') FOR [RAM_SIZE]
GO
ALTER TABLE [dbo].[EnterasysRouter] ADD  DEFAULT ('Not Available') FOR [FLASH_SIZE]
GO
ALTER TABLE [dbo].[EnterasysRouter]  WITH CHECK ADD  CONSTRAINT [EnterasysRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[EnterasysRouter] CHECK CONSTRAINT [EnterasysRouter_FK1]
GO
