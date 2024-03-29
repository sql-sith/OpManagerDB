USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AbsoluteRules_Tablet]    Script Date: 6/29/2019 5:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbsoluteRules_Tablet](
	[ART_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NULL,
	[RULE] [nvarchar](90) NULL,
	[STATUS] [nvarchar](15) NULL,
	[REQUEST_COUNT] [int] NULL,
	[TOTAL_BYTES] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ART_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [AbsoluteRules_Tablet_IDX0]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [AbsoluteRules_Tablet_IDX0] ON [dbo].[AbsoluteRules_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbsoluteRules_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[AbsoluteRules_Tablet] ADD  DEFAULT (NULL) FOR [RID]
GO
ALTER TABLE [dbo].[AbsoluteRules_Tablet] ADD  DEFAULT (NULL) FOR [RULE]
GO
ALTER TABLE [dbo].[AbsoluteRules_Tablet] ADD  DEFAULT (NULL) FOR [STATUS]
GO
ALTER TABLE [dbo].[AbsoluteRules_Tablet] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[AbsoluteRules_Tablet] ADD  DEFAULT (NULL) FOR [TOTAL_BYTES]
GO
