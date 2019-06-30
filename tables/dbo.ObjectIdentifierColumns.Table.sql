USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ObjectIdentifierColumns]    Script Date: 6/29/2019 5:49:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectIdentifierColumns](
	[QUERYID] [bigint] NOT NULL,
	[TABLENAME] [varchar](50) NULL,
	[COLUMNNAME] [varchar](50) NOT NULL,
	[COLUMNVALUE] [varchar](50) NULL,
 CONSTRAINT [Object_PK] PRIMARY KEY CLUSTERED 
(
	[COLUMNNAME] ASC,
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_514370981]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_514370981] ON [dbo].[ObjectIdentifierColumns]
(
	[QUERYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ObjectIdentifierColumns]  WITH CHECK ADD  CONSTRAINT [Object_FK] FOREIGN KEY([QUERYID])
REFERENCES [dbo].[TreeQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[ObjectIdentifierColumns] CHECK CONSTRAINT [Object_FK]
GO
