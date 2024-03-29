USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OperationsTreeTable]    Script Date: 6/29/2019 5:49:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationsTreeTable](
	[PARENTOPERATION] [varchar](50) NOT NULL,
	[CHILDOPERATION] [varchar](50) NOT NULL,
	[LEAFNODE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PARENTOPERATION] ASC,
	[CHILDOPERATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [OperationsTreeTable0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [OperationsTreeTable0_ndx] ON [dbo].[OperationsTreeTable]
(
	[PARENTOPERATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [OperationsTreeTable1_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [OperationsTreeTable1_ndx] ON [dbo].[OperationsTreeTable]
(
	[CHILDOPERATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
