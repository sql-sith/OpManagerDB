USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BenchMarkDailyData]    Script Date: 6/29/2019 5:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenchMarkDailyData](
	[PARAM_ID] [int] NOT NULL,
	[COLLECTIONTIME] [datetime] NOT NULL,
	[VALUE] [real] NOT NULL,
 CONSTRAINT [BenchMarkDailyData_PK] PRIMARY KEY CLUSTERED 
(
	[PARAM_ID] ASC,
	[COLLECTIONTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1576353485]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1576353485] ON [dbo].[BenchMarkDailyData]
(
	[PARAM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BenchMarkDailyData]  WITH CHECK ADD  CONSTRAINT [BenchMarkDailyData_FK1] FOREIGN KEY([PARAM_ID])
REFERENCES [dbo].[BenchMarkParameters] ([PARAM_ID])
GO
ALTER TABLE [dbo].[BenchMarkDailyData] CHECK CONSTRAINT [BenchMarkDailyData_FK1]
GO
