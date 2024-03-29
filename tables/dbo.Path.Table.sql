USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Path]    Script Date: 6/29/2019 5:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Path](
	[PATH_ID] [bigint] NOT NULL,
	[PROBE_ID] [bigint] NOT NULL,
	[PATHNAME] [varchar](250) NOT NULL,
	[PATHINDEX] [bigint] NOT NULL,
 CONSTRAINT [Path_PK] PRIMARY KEY CLUSTERED 
(
	[PATH_ID] ASC,
	[PROBE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Path_UK0] UNIQUE NONCLUSTERED 
(
	[PATHNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_873198335]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_873198335] ON [dbo].[Path]
(
	[PROBE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Path]  WITH CHECK ADD  CONSTRAINT [Path_FK] FOREIGN KEY([PROBE_ID])
REFERENCES [dbo].[ProbeId] ([PROBE_ID])
GO
ALTER TABLE [dbo].[Path] CHECK CONSTRAINT [Path_FK]
GO
