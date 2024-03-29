USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MAPUSERPROPS]    Script Date: 6/29/2019 5:48:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAPUSERPROPS](
	[NAME] [varchar](300) NOT NULL,
	[MAPNAME] [varchar](100) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[PROPNAME] [varchar](500) NOT NULL,
	[PROPVAL] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MAPUSERPROPS0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MAPUSERPROPS0_ndx] ON [dbo].[MAPUSERPROPS]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MAPUSERPROPS1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MAPUSERPROPS1_ndx] ON [dbo].[MAPUSERPROPS]
(
	[MAPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MAPUSERPROPS2_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [MAPUSERPROPS2_ndx] ON [dbo].[MAPUSERPROPS]
(
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
