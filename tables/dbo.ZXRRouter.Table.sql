USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ZXRRouter]    Script Date: 6/29/2019 5:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZXRRouter](
	[RESOURCEID] [bigint] NOT NULL,
	[BOOTROM_VERSION] [varchar](150) NOT NULL,
	[MAIN_PROCESSOR] [varchar](150) NOT NULL,
 CONSTRAINT [ZXRRouter_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__560117238]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__560117238] ON [dbo].[ZXRRouter]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ZXRRouter] ADD  DEFAULT ('Not Available') FOR [BOOTROM_VERSION]
GO
ALTER TABLE [dbo].[ZXRRouter] ADD  DEFAULT ('Not Available') FOR [MAIN_PROCESSOR]
GO
ALTER TABLE [dbo].[ZXRRouter]  WITH CHECK ADD  CONSTRAINT [ZXRRouter_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[ZXRRouter] CHECK CONSTRAINT [ZXRRouter_FK1]
GO
