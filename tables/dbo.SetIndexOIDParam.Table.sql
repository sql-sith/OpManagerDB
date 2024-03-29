USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SetIndexOIDParam]    Script Date: 6/29/2019 5:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetIndexOIDParam](
	[RecordID] [varchar](250) NOT NULL,
	[ParamIndex] [int] NOT NULL,
	[IndexName] [varchar](100) NOT NULL,
	[IndexValue] [varchar](100) NOT NULL,
 CONSTRAINT [SETINDEXOIDPARAM_KEY] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC,
	[ParamIndex] ASC,
	[IndexName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_875891153]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_875891153] ON [dbo].[SetIndexOIDParam]
(
	[ParamIndex] ASC,
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SetIndexOIDParam]  WITH CHECK ADD  CONSTRAINT [SETINDEXOIDPARAM_FK] FOREIGN KEY([ParamIndex], [RecordID])
REFERENCES [dbo].[SnmpSetParam] ([ParamIndex], [RecordID])
GO
ALTER TABLE [dbo].[SetIndexOIDParam] CHECK CONSTRAINT [SETINDEXOIDPARAM_FK]
GO
