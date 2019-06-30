USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STORAGEHOSTDETAILS]    Script Date: 6/29/2019 5:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORAGEHOSTDETAILS](
	[HOST_ID] [bigint] NOT NULL,
	[PARENT_NAME] [varchar](250) NOT NULL,
	[HOST_GROUP] [varchar](250) NULL,
	[LUN] [varchar](250) NULL,
	[TARGET_PORT] [text] NULL,
	[ADDITIONAL_DATA] [text] NULL,
 CONSTRAINT [STORAGEHOSTDETAILS_PK] PRIMARY KEY CLUSTERED 
(
	[HOST_ID] ASC,
	[PARENT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_179676684]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_179676684] ON [dbo].[STORAGEHOSTDETAILS]
(
	[HOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STORAGEHOSTDETAILS]  WITH CHECK ADD  CONSTRAINT [STORAGEHOSTDETAILS_FK1] FOREIGN KEY([HOST_ID])
REFERENCES [dbo].[STORAGEHOSTNAME] ([ID])
GO
ALTER TABLE [dbo].[STORAGEHOSTDETAILS] CHECK CONSTRAINT [STORAGEHOSTDETAILS_FK1]
GO
