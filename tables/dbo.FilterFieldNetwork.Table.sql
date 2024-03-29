USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FilterFieldNetwork]    Script Date: 6/29/2019 5:47:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterFieldNetwork](
	[ID] [int] NOT NULL,
	[FID] [int] NOT NULL,
	[FIELD] [int] NOT NULL,
	[NETVALUE] [varchar](255) NOT NULL,
	[MASKVALUE] [varchar](255) NOT NULL,
	[FLAG] [int] NOT NULL,
 CONSTRAINT [FilterFieldNetwork_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1586911656]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1586911656] ON [dbo].[FilterFieldNetwork]
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FilterFieldNetwork] ADD  DEFAULT ('0') FOR [FLAG]
GO
ALTER TABLE [dbo].[FilterFieldNetwork]  WITH CHECK ADD  CONSTRAINT [FilterFieldNetwork_FK] FOREIGN KEY([FID])
REFERENCES [dbo].[Filter] ([FID])
GO
ALTER TABLE [dbo].[FilterFieldNetwork] CHECK CONSTRAINT [FilterFieldNetwork_FK]
GO
