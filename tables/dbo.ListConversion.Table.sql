USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ListConversion]    Script Date: 6/29/2019 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListConversion](
	[CONVERSIONID] [varchar](250) NOT NULL,
	[MAPPEDTABLE] [varchar](50) NOT NULL,
	[MAPPEDCOLUMN] [varchar](100) NOT NULL,
	[COLUMNNAME] [varchar](100) NOT NULL,
 CONSTRAINT [ListConversion_PK] PRIMARY KEY CLUSTERED 
(
	[CONVERSIONID] ASC,
	[MAPPEDTABLE] ASC,
	[MAPPEDCOLUMN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_2083902913]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2083902913] ON [dbo].[ListConversion]
(
	[CONVERSIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ListConversion]  WITH CHECK ADD  CONSTRAINT [ListConversion_FK1] FOREIGN KEY([CONVERSIONID])
REFERENCES [dbo].[Conversion] ([CONVERSIONID])
GO
ALTER TABLE [dbo].[ListConversion] CHECK CONSTRAINT [ListConversion_FK1]
GO
