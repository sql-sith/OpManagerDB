USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[F5Bigip]    Script Date: 6/29/2019 5:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F5Bigip](
	[RESOURCEID] [bigint] NOT NULL,
	[CHASSIS] [varchar](25) NOT NULL,
	[BIOSVERSION] [varchar](25) NOT NULL,
	[PARTNUMBER] [varchar](25) NOT NULL,
	[SWITCHBOARDSERIALNO] [varchar](50) NOT NULL,
 CONSTRAINT [F5Bigip_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_551717381]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_551717381] ON [dbo].[F5Bigip]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[F5Bigip] ADD  DEFAULT ('Not Available') FOR [CHASSIS]
GO
ALTER TABLE [dbo].[F5Bigip] ADD  DEFAULT ('Not Available') FOR [BIOSVERSION]
GO
ALTER TABLE [dbo].[F5Bigip] ADD  DEFAULT ('Not Available') FOR [PARTNUMBER]
GO
ALTER TABLE [dbo].[F5Bigip] ADD  DEFAULT ('Not Available') FOR [SWITCHBOARDSERIALNO]
GO
ALTER TABLE [dbo].[F5Bigip]  WITH CHECK ADD  CONSTRAINT [F5Bigip_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[F5Bigip] CHECK CONSTRAINT [F5Bigip_FK1]
GO
