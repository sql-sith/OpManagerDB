USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SrcIf10Min_IPG0]    Script Date: 6/29/2019 5:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SrcIf10Min_IPG0](
	[ID] [bigint] NOT NULL,
	[SRC_IF] [int] NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[PACKETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
	[MIN_OCTETS] [bigint] NOT NULL,
	[MAX_OCTETS] [bigint] NOT NULL,
	[AVG_OCTETS] [bigint] NOT NULL,
 CONSTRAINT [SrcIf10Min_PKZ_IPG0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
