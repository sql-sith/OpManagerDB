USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ExchangeVersion]    Script Date: 6/29/2019 5:47:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeVersion](
	[MOID] [bigint] NOT NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [ExchangeVersion_PK1] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_234876386]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_234876386] ON [dbo].[ExchangeVersion]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExchangeVersion] ADD  DEFAULT ('0') FOR [Version]
GO
ALTER TABLE [dbo].[ExchangeVersion]  WITH CHECK ADD  CONSTRAINT [ExchangeVersion_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[ExchangeVersion] CHECK CONSTRAINT [ExchangeVersion_FK1]
GO
