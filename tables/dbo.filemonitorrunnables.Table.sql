USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[filemonitorrunnables]    Script Date: 6/29/2019 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filemonitorrunnables](
	[commonpollid] [bigint] NOT NULL,
	[nextpollat] [bigint] NOT NULL,
 CONSTRAINT [filemonitorrunnables_PK] PRIMARY KEY CLUSTERED 
(
	[commonpollid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1280772517]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1280772517] ON [dbo].[filemonitorrunnables]
(
	[commonpollid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[filemonitorrunnables]  WITH CHECK ADD  CONSTRAINT [filemonitorrunnables_FK1] FOREIGN KEY([commonpollid])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[filemonitorrunnables] CHECK CONSTRAINT [filemonitorrunnables_FK1]
GO
