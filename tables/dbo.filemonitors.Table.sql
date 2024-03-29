USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[filemonitors]    Script Date: 6/29/2019 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filemonitors](
	[filemonitorid] [bigint] NOT NULL,
	[monitorname] [varchar](100) NOT NULL,
	[filepath] [varchar](4000) NOT NULL,
	[pollinterval] [int] NOT NULL,
	[protocolid] [bigint] NOT NULL,
 CONSTRAINT [filemonitors_PK] PRIMARY KEY CLUSTERED 
(
	[filemonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2035157853]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2035157853] ON [dbo].[filemonitors]
(
	[protocolid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2035157854]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2035157854] ON [dbo].[filemonitors]
(
	[filemonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[filemonitors]  WITH CHECK ADD  CONSTRAINT [filemonitors_FK1] FOREIGN KEY([filemonitorid])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[filemonitors] CHECK CONSTRAINT [filemonitors_FK1]
GO
ALTER TABLE [dbo].[filemonitors]  WITH CHECK ADD  CONSTRAINT [filemonitors_FK2] FOREIGN KEY([protocolid])
REFERENCES [dbo].[PROTOCOLDETAILS] ([PROTOCOLID])
GO
ALTER TABLE [dbo].[filemonitors] CHECK CONSTRAINT [filemonitors_FK2]
GO
