USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Responder]    Script Date: 6/29/2019 5:51:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responder](
	[TARGET_ID] [bigint] NOT NULL,
	[SAAVERSION] [varchar](50) NOT NULL,
	[IOSVERSION] [varchar](50) NOT NULL,
	[RESPONDERON] [bit] NOT NULL,
 CONSTRAINT [Responder_PK] PRIMARY KEY CLUSTERED 
(
	[TARGET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1174990402]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1174990402] ON [dbo].[Responder]
(
	[TARGET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Responder]  WITH CHECK ADD  CONSTRAINT [Responder_FK] FOREIGN KEY([TARGET_ID])
REFERENCES [dbo].[Target] ([TARGET_ID])
GO
ALTER TABLE [dbo].[Responder] CHECK CONSTRAINT [Responder_FK]
GO
