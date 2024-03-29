USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DefaultIpslaThresholdLimits]    Script Date: 6/29/2019 5:47:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultIpslaThresholdLimits](
	[THRESHOLD_ID] [int] NOT NULL,
	[WARNING_LIMIT] [float] NOT NULL,
	[ERROR_LIMIT] [float] NOT NULL,
 CONSTRAINT [DefaultIpslaThresholdLimits_PK] PRIMARY KEY CLUSTERED 
(
	[THRESHOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1038795585]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1038795585] ON [dbo].[DefaultIpslaThresholdLimits]
(
	[THRESHOLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DefaultIpslaThresholdLimits]  WITH CHECK ADD  CONSTRAINT [DefaultIpslaThresholdLimits_FK] FOREIGN KEY([THRESHOLD_ID])
REFERENCES [dbo].[IpslaThresholdVariables] ([ID])
GO
ALTER TABLE [dbo].[DefaultIpslaThresholdLimits] CHECK CONSTRAINT [DefaultIpslaThresholdLimits_FK]
GO
