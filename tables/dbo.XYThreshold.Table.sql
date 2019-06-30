USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[XYThreshold]    Script Date: 6/29/2019 5:53:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XYThreshold](
	[PROBEGROUP_ID] [bigint] NOT NULL,
	[XVALUE] [int] NOT NULL,
	[YVALUE] [int] NOT NULL,
 CONSTRAINT [XYThreshold_PK] PRIMARY KEY CLUSTERED 
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__974417222]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__974417222] ON [dbo].[XYThreshold]
(
	[PROBEGROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XYThreshold]  WITH CHECK ADD  CONSTRAINT [XYThreshold_FK] FOREIGN KEY([PROBEGROUP_ID])
REFERENCES [dbo].[Collector] ([PROBEGROUP_ID])
GO
ALTER TABLE [dbo].[XYThreshold] CHECK CONSTRAINT [XYThreshold_FK]
GO
