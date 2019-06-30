USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMBulkPCIReviewStatus]    Script Date: 6/29/2019 5:49:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMBulkPCIReviewStatus](
	[REVIEW_ID] [bigint] NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
	[RESOURCENAME] [varchar](200) NOT NULL,
	[STATUS] [varchar](15) NOT NULL,
	[REVIEW_COMMENTS] [text] NULL,
	[REVIEWED_TIME] [datetime] NULL,
 CONSTRAINT [NCMBulkPCIReviewStatus_PK] PRIMARY KEY CLUSTERED 
(
	[REVIEW_ID] ASC,
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__745863709]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__745863709] ON [dbo].[NCMBulkPCIReviewStatus]
(
	[REVIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMBulkPCIReviewStatus]  WITH CHECK ADD  CONSTRAINT [NCMBulkPCIReviewStatus_FK1] FOREIGN KEY([REVIEW_ID])
REFERENCES [dbo].[NCMBulkPCIReview] ([REVIEW_ID])
GO
ALTER TABLE [dbo].[NCMBulkPCIReviewStatus] CHECK CONSTRAINT [NCMBulkPCIReviewStatus_FK1]
GO
