USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AbsoluteRules_Year]    Script Date: 6/29/2019 5:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbsoluteRules_Year](
	[ARID] [bigint] IDENTITY(1,1) NOT NULL,
	[RID] [bigint] NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[TYPE] [int] NOT NULL,
	[RULENAME] [nvarchar](90) NOT NULL,
	[COUNT] [int] NULL,
	[TOTAL_BYTES] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ARID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [AbsoluteRules_Year_CIDX1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [AbsoluteRules_Year_CIDX1] ON [dbo].[AbsoluteRules_Year]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AbsoluteRules_Year_CIDX2]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [AbsoluteRules_Year_CIDX2] ON [dbo].[AbsoluteRules_Year]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbsoluteRules_Year] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[AbsoluteRules_Year] ADD  DEFAULT ('0') FOR [COUNT]
GO
ALTER TABLE [dbo].[AbsoluteRules_Year] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
