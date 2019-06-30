USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MediaTrace_MetaTable]    Script Date: 6/29/2019 5:48:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTrace_MetaTable](
	[ID] [bigint] NOT NULL,
	[ARCHIVETABLENAME] [varchar](32) NOT NULL,
	[LOOKUPTABLENAME] [varchar](32) NOT NULL,
	[FROMTIME] [bigint] NOT NULL,
	[ENDTIME] [bigint] NOT NULL,
	[BUILDNUMBER] [int] NOT NULL,
 CONSTRAINT [MediaTrace_MetaTable_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MediaTrace_MetaTable] ADD  DEFAULT ('7001') FOR [BUILDNUMBER]
GO
