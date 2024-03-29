USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NMS_InetService]    Script Date: 6/29/2019 5:49:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NMS_InetService](
	[RESOURCEID] [bigint] NOT NULL,
	[PORT] [int] NULL,
 CONSTRAINT [NMS_InetService_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__645212573]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__645212573] ON [dbo].[NMS_InetService]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NMS_InetService]  WITH CHECK ADD  CONSTRAINT [NMS_InetService_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NEService] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NMS_InetService] CHECK CONSTRAINT [NMS_InetService_FK1]
GO
