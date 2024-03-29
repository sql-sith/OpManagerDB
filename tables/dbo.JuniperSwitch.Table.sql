USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[JuniperSwitch]    Script Date: 6/29/2019 5:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JuniperSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[MODEL] [varchar](25) NOT NULL,
 CONSTRAINT [JuniperSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1150830888]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1150830888] ON [dbo].[JuniperSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JuniperSwitch] ADD  DEFAULT ('Not Available') FOR [MODEL]
GO
ALTER TABLE [dbo].[JuniperSwitch]  WITH CHECK ADD  CONSTRAINT [JuniperSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[JuniperSwitch] CHECK CONSTRAINT [JuniperSwitch_FK1]
GO
