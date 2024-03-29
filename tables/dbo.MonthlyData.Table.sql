USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MonthlyData]    Script Date: 6/29/2019 5:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyData](
	[IFID] [bigint] NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[TIME_INTERVAL] [bigint] NULL,
	[OUT_RELATIVE_VALUE] [bigint] NULL,
	[IN_RELATIVE_VALUE] [bigint] NULL,
	[OUT_UNICAST_VALUE] [bigint] NULL,
	[OUT_BROADCAST_VALUE] [bigint] NULL,
	[IN_UNICAST_VALUE] [bigint] NULL,
	[IN_BROADCAST_VALUE] [bigint] NULL,
	[START_DATETIME] [datetime] NOT NULL,
 CONSTRAINT [MonthlyData_PK] PRIMARY KEY CLUSTERED 
(
	[IFID] ASC,
	[START_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__38561532]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__38561532] ON [dbo].[MonthlyData]
(
	[IFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MonthlyData]  WITH CHECK ADD  CONSTRAINT [MonthlyData_FK1] FOREIGN KEY([IFID])
REFERENCES [dbo].[BWInterfaces] ([ID])
GO
ALTER TABLE [dbo].[MonthlyData] CHECK CONSTRAINT [MonthlyData_FK1]
GO
