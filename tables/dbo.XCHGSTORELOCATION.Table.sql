USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[XCHGSTORELOCATION]    Script Date: 6/29/2019 5:53:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XCHGSTORELOCATION](
	[MOID] [bigint] NOT NULL,
	[TYPE] [varchar](50) NOT NULL,
	[LOCATION] [varchar](4000) NOT NULL,
 CONSTRAINT [XCHGSTORELOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC,
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1594525657]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1594525657] ON [dbo].[XCHGSTORELOCATION]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XCHGSTORELOCATION]  WITH CHECK ADD  CONSTRAINT [XCHGSTORELOCATION_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[XCHGSTORELOCATION] CHECK CONSTRAINT [XCHGSTORELOCATION_FK1]
GO
