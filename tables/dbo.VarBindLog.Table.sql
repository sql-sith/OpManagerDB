USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VarBindLog]    Script Date: 6/29/2019 5:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VarBindLog](
	[NOTIINDEX] [int] NOT NULL,
	[VARINDEX] [int] NOT NULL,
	[VARTYPE] [int] NULL,
	[VARVALUE] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTIINDEX] ASC,
	[VARINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [VarBindLog0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VarBindLog0_ndx] ON [dbo].[VarBindLog]
(
	[NOTIINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VarBindLog1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [VarBindLog1_ndx] ON [dbo].[VarBindLog]
(
	[VARINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
