USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ColumnConversion]    Script Date: 6/29/2019 5:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColumnConversion](
	[CONVERSIONID] [varchar](250) NOT NULL,
	[MAPPEDTABLE] [varchar](50) NOT NULL,
	[MAPPEDCOLUMN] [varchar](100) NOT NULL,
	[COLUMNNAME] [varchar](100) NOT NULL,
	[ROWNAME] [varchar](100) NULL,
	[NULLVALUE] [varchar](100) NULL,
	[NULLCHECK] [bit] NOT NULL,
	[OTHERCOLUMNNAME] [varchar](100) NULL,
 CONSTRAINT [ColumnConversion_PK] PRIMARY KEY CLUSTERED 
(
	[CONVERSIONID] ASC,
	[MAPPEDTABLE] ASC,
	[MAPPEDCOLUMN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1041518201]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1041518201] ON [dbo].[ColumnConversion]
(
	[CONVERSIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ColumnConversion] ADD  DEFAULT ((1)) FOR [NULLCHECK]
GO
ALTER TABLE [dbo].[ColumnConversion]  WITH CHECK ADD  CONSTRAINT [ColumnConversion_FK1] FOREIGN KEY([CONVERSIONID])
REFERENCES [dbo].[Conversion] ([CONVERSIONID])
GO
ALTER TABLE [dbo].[ColumnConversion] CHECK CONSTRAINT [ColumnConversion_FK1]
GO
