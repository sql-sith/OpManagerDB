USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MapGroup]    Script Date: 6/29/2019 5:48:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapGroup](
	[NAME] [varchar](100) NOT NULL,
	[OBJNAME] [varchar](100) NOT NULL,
	[MAPNAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[LABEL] [varchar](255) NULL,
	[ICONNAME] [varchar](100) NULL,
	[MENUNAME] [varchar](100) NULL,
	[WIDTH] [int] NULL,
	[HEIGHT] [int] NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[WEBNMS] [varchar](100) NULL,
	[GROUPNAME] [varchar](100) NULL,
	[OBJTYPE] [int] NULL,
	[ANCHORED] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC,
	[MAPNAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MapGroup0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MapGroup0_ndx] ON [dbo].[MapGroup]
(
	[MAPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MapGroup1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MapGroup1_ndx] ON [dbo].[MapGroup]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MapGroup2_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MapGroup2_ndx] ON [dbo].[MapGroup]
(
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MapGroup3_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MapGroup3_ndx] ON [dbo].[MapGroup]
(
	[OBJNAME] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
