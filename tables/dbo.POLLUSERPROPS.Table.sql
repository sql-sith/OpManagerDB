USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[POLLUSERPROPS]    Script Date: 6/29/2019 5:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POLLUSERPROPS](
	[NAME] [varchar](100) NOT NULL,
	[AGENT] [varchar](100) NOT NULL,
	[OID] [varchar](300) NOT NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[PROPNAME] [varchar](150) NOT NULL,
	[PROPVAL] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [POLLUSERPROPS0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [POLLUSERPROPS0_ndx] ON [dbo].[POLLUSERPROPS]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [POLLUSERPROPS1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [POLLUSERPROPS1_ndx] ON [dbo].[POLLUSERPROPS]
(
	[AGENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [POLLUSERPROPS2_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [POLLUSERPROPS2_ndx] ON [dbo].[POLLUSERPROPS]
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [POLLUSERPROPS3_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [POLLUSERPROPS3_ndx] ON [dbo].[POLLUSERPROPS]
(
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
