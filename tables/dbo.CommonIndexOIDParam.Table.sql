USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CommonIndexOIDParam]    Script Date: 6/29/2019 5:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonIndexOIDParam](
	[RecordID] [varchar](250) NOT NULL,
	[IndexName] [varchar](100) NOT NULL,
	[IndexValue] [varchar](100) NOT NULL,
 CONSTRAINT [COMINDEXOIDPARAM_KEY] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC,
	[IndexName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_148121756]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_148121756] ON [dbo].[CommonIndexOIDParam]
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommonIndexOIDParam]  WITH CHECK ADD  CONSTRAINT [COMSNMPGETRECORD_FK] FOREIGN KEY([RecordID])
REFERENCES [dbo].[SnmpGetRecord] ([RecordID])
GO
ALTER TABLE [dbo].[CommonIndexOIDParam] CHECK CONSTRAINT [COMSNMPGETRECORD_FK]
GO
