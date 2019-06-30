USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BWAlertCriteria]    Script Date: 6/29/2019 5:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BWAlertCriteria](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[ALERT_STATE] [int] NOT NULL,
	[UTILIZATION_CRITERIA] [bigint] NOT NULL,
 CONSTRAINT [BWAlertCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1989912877]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1989912877] ON [dbo].[BWAlertCriteria]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BWAlertCriteria] ADD  DEFAULT ('Global') FOR [NAME]
GO
ALTER TABLE [dbo].[BWAlertCriteria] ADD  DEFAULT ('3') FOR [ALERT_STATE]
GO
ALTER TABLE [dbo].[BWAlertCriteria] ADD  DEFAULT ('90') FOR [UTILIZATION_CRITERIA]
GO
ALTER TABLE [dbo].[BWAlertCriteria]  WITH CHECK ADD  CONSTRAINT [BWAlertCriteria_FK1] FOREIGN KEY([NAME])
REFERENCES [dbo].[BWAlertConfig] ([NAME])
GO
ALTER TABLE [dbo].[BWAlertCriteria] CHECK CONSTRAINT [BWAlertCriteria_FK1]
GO
