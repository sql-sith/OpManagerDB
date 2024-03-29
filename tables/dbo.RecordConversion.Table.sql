USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RecordConversion]    Script Date: 6/29/2019 5:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordConversion](
	[RECORDID] [varchar](250) NOT NULL,
	[PERSONALITYNAME] [varchar](100) NOT NULL,
	[CONVERSIONID] [varchar](250) NOT NULL,
 CONSTRAINT [RecordConversion_PK] PRIMARY KEY CLUSTERED 
(
	[RECORDID] ASC,
	[PERSONALITYNAME] ASC,
	[CONVERSIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__535620555]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__535620555] ON [dbo].[RecordConversion]
(
	[CONVERSIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__535620556]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__535620556] ON [dbo].[RecordConversion]
(
	[RECORDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordConversion]  WITH CHECK ADD  CONSTRAINT [RecordConversion_FK1] FOREIGN KEY([RECORDID])
REFERENCES [dbo].[Record] ([RecordID])
GO
ALTER TABLE [dbo].[RecordConversion] CHECK CONSTRAINT [RecordConversion_FK1]
GO
ALTER TABLE [dbo].[RecordConversion]  WITH CHECK ADD  CONSTRAINT [RecordConversion_FK2] FOREIGN KEY([CONVERSIONID])
REFERENCES [dbo].[Conversion] ([CONVERSIONID])
GO
ALTER TABLE [dbo].[RecordConversion] CHECK CONSTRAINT [RecordConversion_FK2]
GO
