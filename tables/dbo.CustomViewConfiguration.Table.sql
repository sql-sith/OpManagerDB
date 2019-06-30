USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomViewConfiguration]    Script Date: 6/29/2019 5:46:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomViewConfiguration](
	[CVID] [bigint] NOT NULL,
	[CVNAME] [varchar](100) NULL,
	[QUERYID] [bigint] NOT NULL,
 CONSTRAINT [CustomViewConfig_PK] PRIMARY KEY CLUSTERED 
(
	[CVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CustomViewConfig_UK1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [CustomViewConfig_UK1] ON [dbo].[CustomViewConfiguration]
(
	[CVNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1675958406]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1675958406] ON [dbo].[CustomViewConfiguration]
(
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomViewConfiguration]  WITH CHECK ADD  CONSTRAINT [CV_SQ_FK] FOREIGN KEY([QUERYID])
REFERENCES [dbo].[SelectQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[CustomViewConfiguration] CHECK CONSTRAINT [CV_SQ_FK]
GO
