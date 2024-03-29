USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPPSwitch]    Script Date: 6/29/2019 5:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPPSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[ROMVERSION] [varchar](25) NOT NULL,
 CONSTRAINT [HPPSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1710782185]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1710782185] ON [dbo].[HPPSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPPSwitch] ADD  DEFAULT ('Not Available') FOR [ROMVERSION]
GO
ALTER TABLE [dbo].[HPPSwitch]  WITH CHECK ADD  CONSTRAINT [HPPSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[HPPSwitch] CHECK CONSTRAINT [HPPSwitch_FK1]
GO
