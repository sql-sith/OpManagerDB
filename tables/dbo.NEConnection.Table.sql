USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NEConnection]    Script Date: 6/29/2019 5:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEConnection](
	[LINKID] [bigint] NOT NULL,
	[SOURCEID] [bigint] NOT NULL,
	[DESTINATIONID] [bigint] NOT NULL,
 CONSTRAINT [NEConnection_PK] PRIMARY KEY CLUSTERED 
(
	[LINKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_43395266]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_43395266] ON [dbo].[NEConnection]
(
	[LINKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_43395267]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_43395267] ON [dbo].[NEConnection]
(
	[SOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_43395268]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_43395268] ON [dbo].[NEConnection]
(
	[DESTINATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NEConnection]  WITH CHECK ADD  CONSTRAINT [NEConnection_FK1] FOREIGN KEY([LINKID])
REFERENCES [dbo].[Link] ([LINKID])
GO
ALTER TABLE [dbo].[NEConnection] CHECK CONSTRAINT [NEConnection_FK1]
GO
ALTER TABLE [dbo].[NEConnection]  WITH CHECK ADD  CONSTRAINT [NEConnection_FK2] FOREIGN KEY([SOURCEID])
REFERENCES [dbo].[NEInterface] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NEConnection] CHECK CONSTRAINT [NEConnection_FK2]
GO
ALTER TABLE [dbo].[NEConnection]  WITH CHECK ADD  CONSTRAINT [NEConnection_FK3] FOREIGN KEY([DESTINATIONID])
REFERENCES [dbo].[NEInterface] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NEConnection] CHECK CONSTRAINT [NEConnection_FK3]
GO
