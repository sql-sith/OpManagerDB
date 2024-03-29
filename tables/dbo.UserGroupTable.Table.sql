USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserGroupTable]    Script Date: 6/29/2019 5:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroupTable](
	[USERID] [bigint] NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[GROUPNAME] [varchar](50) NOT NULL,
	[OWNERNAME] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[USERNAME] ASC,
	[GROUPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserGroupTable0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [UserGroupTable0_ndx] ON [dbo].[UserGroupTable]
(
	[USERNAME] ASC,
	[GROUPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserGroupTable1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [UserGroupTable1_ndx] ON [dbo].[UserGroupTable]
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserGroupTable2_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [UserGroupTable2_ndx] ON [dbo].[UserGroupTable]
(
	[GROUPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
