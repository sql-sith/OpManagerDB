USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[filemonitorsvsmoid]    Script Date: 6/29/2019 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filemonitorsvsmoid](
	[moid] [bigint] NOT NULL,
	[filefoldermonitorid] [bigint] NOT NULL,
	[deviceid] [bigint] NOT NULL,
 CONSTRAINT [filemonitorsvsmoid_PK] PRIMARY KEY CLUSTERED 
(
	[moid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1061271132]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1061271132] ON [dbo].[filemonitorsvsmoid]
(
	[filefoldermonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1061271133]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1061271133] ON [dbo].[filemonitorsvsmoid]
(
	[deviceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1061271134]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1061271134] ON [dbo].[filemonitorsvsmoid]
(
	[moid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[filemonitorsvsmoid]  WITH CHECK ADD  CONSTRAINT [filemonitorsvsmoid_FK1] FOREIGN KEY([filefoldermonitorid])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[filemonitorsvsmoid] CHECK CONSTRAINT [filemonitorsvsmoid_FK1]
GO
ALTER TABLE [dbo].[filemonitorsvsmoid]  WITH CHECK ADD  CONSTRAINT [filemonitorsvsmoid_FK2] FOREIGN KEY([deviceid])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[filemonitorsvsmoid] CHECK CONSTRAINT [filemonitorsvsmoid_FK2]
GO
ALTER TABLE [dbo].[filemonitorsvsmoid]  WITH CHECK ADD  CONSTRAINT [filemonitorsvsmoid_FK3] FOREIGN KEY([moid])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[filemonitorsvsmoid] CHECK CONSTRAINT [filemonitorsvsmoid_FK3]
GO
