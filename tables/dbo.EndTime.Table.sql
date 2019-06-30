USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EndTime]    Script Date: 6/29/2019 5:47:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndTime](
	[PROBEGROUP_ID] [bigint] NOT NULL,
	[ENDTIME] [bigint] NOT NULL,
 CONSTRAINT [EndTime_PK] PRIMARY KEY CLUSTERED 
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_907041340]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_907041340] ON [dbo].[EndTime]
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EndTime]  WITH CHECK ADD  CONSTRAINT [EndTime_FK] FOREIGN KEY([PROBEGROUP_ID])
REFERENCES [dbo].[Collector] ([PROBEGROUP_ID])
GO
ALTER TABLE [dbo].[EndTime] CHECK CONSTRAINT [EndTime_FK]
GO
