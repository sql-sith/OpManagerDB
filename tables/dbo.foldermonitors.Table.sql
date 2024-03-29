USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[foldermonitors]    Script Date: 6/29/2019 5:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foldermonitors](
	[foldermonitorid] [bigint] NOT NULL,
	[monitorname] [varchar](100) NOT NULL,
	[folderpath] [varchar](4000) NOT NULL,
	[subfolder] [bit] NOT NULL,
	[pollinterval] [int] NOT NULL,
	[protocolid] [bigint] NOT NULL,
	[wildcard] [varchar](100) NOT NULL,
	[basedon] [int] NOT NULL,
 CONSTRAINT [foldermonitors_PK] PRIMARY KEY CLUSTERED 
(
	[foldermonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1244807316]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1244807316] ON [dbo].[foldermonitors]
(
	[foldermonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1244807317]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1244807317] ON [dbo].[foldermonitors]
(
	[protocolid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[foldermonitors] ADD  DEFAULT ((1)) FOR [subfolder]
GO
ALTER TABLE [dbo].[foldermonitors] ADD  DEFAULT ('2') FOR [basedon]
GO
ALTER TABLE [dbo].[foldermonitors]  WITH CHECK ADD  CONSTRAINT [foldermonitors_FK1] FOREIGN KEY([foldermonitorid])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[foldermonitors] CHECK CONSTRAINT [foldermonitors_FK1]
GO
ALTER TABLE [dbo].[foldermonitors]  WITH CHECK ADD  CONSTRAINT [foldermonitors_FK2] FOREIGN KEY([protocolid])
REFERENCES [dbo].[PROTOCOLDETAILS] ([PROTOCOLID])
GO
ALTER TABLE [dbo].[foldermonitors] CHECK CONSTRAINT [foldermonitors_FK2]
GO
