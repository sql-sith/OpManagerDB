USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Snap]    Script Date: 6/29/2019 5:51:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snap](
	[SNAPID] [bigint] NOT NULL,
	[SNAPNAME] [varchar](200) NOT NULL,
	[SNAPDESCRIPTION] [varchar](4000) NOT NULL,
	[APIURL] [varchar](4000) NOT NULL,
	[PARMETER] [varchar](4000) NOT NULL,
	[TYPEID] [bigint] NOT NULL,
 CONSTRAINT [Snap_PK] PRIMARY KEY CLUSTERED 
(
	[SNAPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Snap_UK0] UNIQUE NONCLUSTERED 
(
	[SNAPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_348888633]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_348888633] ON [dbo].[Snap]
(
	[TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Snap]  WITH CHECK ADD  CONSTRAINT [Snap_FK3] FOREIGN KEY([TYPEID])
REFERENCES [dbo].[SnapType] ([TYPEID])
GO
ALTER TABLE [dbo].[Snap] CHECK CONSTRAINT [Snap_FK3]
GO
