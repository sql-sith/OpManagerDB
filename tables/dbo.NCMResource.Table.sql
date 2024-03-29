USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMResource]    Script Date: 6/29/2019 5:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMResource](
	[RESOURCEID] [bigint] NOT NULL,
	[SERIES] [varchar](100) NOT NULL,
	[MODEL] [varchar](50) NOT NULL,
	[OSTYPE] [varchar](50) NOT NULL,
	[OSVERSION] [varchar](50) NOT NULL,
	[MACADDRESS] [varchar](250) NOT NULL,
	[IMAGEFILENAME] [varchar](250) NOT NULL,
	[SERIALNUMBER] [varchar](250) NOT NULL,
 CONSTRAINT [NCMResource_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_775272883]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_775272883] ON [dbo].[NCMResource]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [SERIES]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [MODEL]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [OSTYPE]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [OSVERSION]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [MACADDRESS]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [IMAGEFILENAME]
GO
ALTER TABLE [dbo].[NCMResource] ADD  DEFAULT ('[NA]') FOR [SERIALNUMBER]
GO
ALTER TABLE [dbo].[NCMResource]  WITH CHECK ADD  CONSTRAINT [NCMResource_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[ManagedResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMResource] CHECK CONSTRAINT [NCMResource_FK1]
GO
