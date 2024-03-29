USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FilterToCriteriaMap]    Script Date: 6/29/2019 5:47:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterToCriteriaMap](
	[FILTER_ID] [bigint] NOT NULL,
	[CRITERIA] [varchar](100) NOT NULL,
	[C1] [varchar](100) NOT NULL,
	[C2] [varchar](100) NULL,
	[C3] [varchar](100) NULL,
	[C4] [varchar](100) NULL,
 CONSTRAINT [FilterToCriteriaMap_PKZ] PRIMARY KEY CLUSTERED 
(
	[FILTER_ID] ASC,
	[CRITERIA] ASC,
	[C1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__640076326]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__640076326] ON [dbo].[FilterToCriteriaMap]
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FilterToCriteriaMap]  WITH CHECK ADD  CONSTRAINT [FilterToCriteriaMap_FK] FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[FilterDetails] ([FILTER_ID])
GO
ALTER TABLE [dbo].[FilterToCriteriaMap] CHECK CONSTRAINT [FilterToCriteriaMap_FK]
GO
