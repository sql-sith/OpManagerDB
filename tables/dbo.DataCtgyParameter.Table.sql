USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataCtgyParameter]    Script Date: 6/29/2019 5:46:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCtgyParameter](
	[ID] [int] NOT NULL,
	[DCID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[PVALUE] [varchar](500) NOT NULL,
 CONSTRAINT [DataCtgyParameter_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_570489288]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_570489288] ON [dbo].[DataCtgyParameter]
(
	[DCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataCtgyParameter]  WITH CHECK ADD  CONSTRAINT [DataCtgyParameter_FK] FOREIGN KEY([DCID])
REFERENCES [dbo].[DataCtgy] ([DCID])
GO
ALTER TABLE [dbo].[DataCtgyParameter] CHECK CONSTRAINT [DataCtgyParameter_FK]
GO
