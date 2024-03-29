USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QualstarLibraryStatus]    Script Date: 6/29/2019 5:50:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualstarLibraryStatus](
	[DEVICE_ID] [bigint] NOT NULL,
	[POWERON_MINUTES] [bigint] NULL,
	[NO_OF_DOOROPEN] [bigint] NULL,
	[NO_OF_CATRIDGEMOVES] [bigint] NULL,
	[NO_OF_GRIPS] [bigint] NULL,
	[NO_OF_PICKS] [bigint] NULL,
	[NO_PLACED] [bigint] NULL,
	[DATASTATE] [varchar](250) NOT NULL,
 CONSTRAINT [QualstarLibraryStatus_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[DATASTATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__888278377]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__888278377] ON [dbo].[QualstarLibraryStatus]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QualstarLibraryStatus]  WITH CHECK ADD  CONSTRAINT [QualstarTapeLibraryStatus_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[QualstarTapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[QualstarLibraryStatus] CHECK CONSTRAINT [QualstarTapeLibraryStatus_FK1]
GO
