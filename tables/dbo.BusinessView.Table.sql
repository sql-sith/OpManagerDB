USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BusinessView]    Script Date: 6/29/2019 5:46:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessView](
	[BUSS_ID] [int] NOT NULL,
	[BUSS_NAME] [varchar](255) NOT NULL,
	[BUSS_SPEED] [bigint] NOT NULL,
	[BUSS_STATE] [int] NOT NULL,
 CONSTRAINT [BusinessView_PK] PRIMARY KEY CLUSTERED 
(
	[BUSS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__803844961]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__803844961] ON [dbo].[BusinessView]
(
	[BUSS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BusinessView] ADD  DEFAULT ('1000000') FOR [BUSS_SPEED]
GO
ALTER TABLE [dbo].[BusinessView] ADD  DEFAULT ('0') FOR [BUSS_STATE]
GO
ALTER TABLE [dbo].[BusinessView]  WITH CHECK ADD  CONSTRAINT [BusinessView_FK] FOREIGN KEY([BUSS_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[BusinessView] CHECK CONSTRAINT [BusinessView_FK]
GO
