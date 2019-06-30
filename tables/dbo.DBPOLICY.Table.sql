USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DBPOLICY]    Script Date: 6/29/2019 5:46:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBPOLICY](
	[KEYSTRING] [varchar](250) NOT NULL,
	[VALUESTRING] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[KEYSTRING] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [dbpolicy0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [dbpolicy0_ndx] ON [dbo].[DBPOLICY]
(
	[KEYSTRING] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
