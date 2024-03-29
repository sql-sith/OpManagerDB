USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataRetrievalConnectionSpec]    Script Date: 6/29/2019 5:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataRetrievalConnectionSpec](
	[DATARETRIEVALID] [bigint] NOT NULL,
	[CONNECTIONORDER] [bigint] NOT NULL,
	[CONNECTIONID] [varchar](250) NOT NULL,
 CONSTRAINT [DataRetConnSpec_PK] PRIMARY KEY CLUSTERED 
(
	[DATARETRIEVALID] ASC,
	[CONNECTIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__566218004]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__566218004] ON [dbo].[DataRetrievalConnectionSpec]
(
	[CONNECTIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__566218005]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__566218005] ON [dbo].[DataRetrievalConnectionSpec]
(
	[DATARETRIEVALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataRetrievalConnectionSpec]  WITH CHECK ADD  CONSTRAINT [DataRetConnSpec_FK1] FOREIGN KEY([DATARETRIEVALID])
REFERENCES [dbo].[DataRetrievalConfiguration] ([DATARETRIEVALID])
GO
ALTER TABLE [dbo].[DataRetrievalConnectionSpec] CHECK CONSTRAINT [DataRetConnSpec_FK1]
GO
ALTER TABLE [dbo].[DataRetrievalConnectionSpec]  WITH CHECK ADD  CONSTRAINT [DataRetConnSpec_FK2] FOREIGN KEY([CONNECTIONID])
REFERENCES [dbo].[ConnectionSpec] ([ConnectionID])
GO
ALTER TABLE [dbo].[DataRetrievalConnectionSpec] CHECK CONSTRAINT [DataRetConnSpec_FK2]
GO
