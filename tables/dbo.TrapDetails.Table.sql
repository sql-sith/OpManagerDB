USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TrapDetails]    Script Date: 6/29/2019 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrapDetails](
	[ID] [bigint] NOT NULL,
	[VARBINDS_VALUES] [text] NOT NULL,
	[VARBINDS_DESC] [text] NOT NULL,
 CONSTRAINT [TrapDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1701313777]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1701313777] ON [dbo].[TrapDetails]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TrapDetails]  WITH CHECK ADD  CONSTRAINT [TrapDetails_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[TrapData] ([ID])
GO
ALTER TABLE [dbo].[TrapDetails] CHECK CONSTRAINT [TrapDetails_FK]
GO
