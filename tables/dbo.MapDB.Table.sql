USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MapDB]    Script Date: 6/29/2019 5:48:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapDB](
	[NAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[PARENT] [varchar](100) NULL,
	[LABEL] [varchar](255) NULL,
	[MENUNAME] [varchar](100) NULL,
	[IMAGENAME] [varchar](100) NULL,
	[TREEICONFILENAME] [varchar](100) NULL,
	[AUTOPLACEMENT] [varchar](10) NULL,
	[ANCHORED] [varchar](10) NULL,
	[HELPDOC] [varchar](100) NULL,
	[TOPOLOGY] [varchar](100) NULL,
	[CURRENTTOPOLOGY] [varchar](100) NULL,
	[WEBNMS] [varchar](100) NULL,
	[GROUPNAME] [varchar](100) NULL,
	[MAPSYMBOLRENDERER] [varchar](100) NULL,
	[MAPLINKRENDERER] [varchar](100) NULL,
	[MAPLISTENER] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MapDB0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MapDB0_ndx] ON [dbo].[MapDB]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MapDB1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MapDB1_ndx] ON [dbo].[MapDB]
(
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
