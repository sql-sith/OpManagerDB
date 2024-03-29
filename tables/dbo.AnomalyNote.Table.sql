USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AnomalyNote]    Script Date: 6/29/2019 5:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnomalyNote](
	[NOTE_ID] [bigint] NOT NULL,
	[AUDIT_ID] [bigint] NOT NULL,
	[OWNERNAME] [nvarchar](25) NULL,
	[ADMINNAME] [nvarchar](25) NULL,
	[TIME] [bigint] NULL,
	[ALERTNOTE] [nvarchar](300) NULL,
 CONSTRAINT [AnomalyNote_PK] PRIMARY KEY CLUSTERED 
(
	[NOTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
