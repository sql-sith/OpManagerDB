USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 6/29/2019 5:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[ATTACHMENT_ID] [bigint] NOT NULL,
	[FILE_PATH_ID] [bigint] NOT NULL,
	[FILE_TYPE_ID] [bigint] NOT NULL,
 CONSTRAINT [Attachments_PK] PRIMARY KEY CLUSTERED 
(
	[ATTACHMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1652200739]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1652200739] ON [dbo].[Attachment]
(
	[FILE_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__468938796]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__468938796] ON [dbo].[Attachment]
(
	[FILE_PATH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [Attachments_FK] FOREIGN KEY([FILE_PATH_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [Attachments_FK]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [Attachments_FK1] FOREIGN KEY([FILE_TYPE_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [Attachments_FK1]
GO
