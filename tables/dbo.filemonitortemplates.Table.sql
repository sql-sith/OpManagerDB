USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[filemonitortemplates]    Script Date: 6/29/2019 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filemonitortemplates](
	[filefoldermonitorid] [bigint] NOT NULL,
	[templatename] [varchar](100) NOT NULL,
	[description] [varchar](4000) NOT NULL,
 CONSTRAINT [filemonitortemplates_PK] PRIMARY KEY CLUSTERED 
(
	[filefoldermonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1607310744]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1607310744] ON [dbo].[filemonitortemplates]
(
	[filefoldermonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[filemonitortemplates]  WITH CHECK ADD  CONSTRAINT [filemonitortemplates_FK1] FOREIGN KEY([filefoldermonitorid])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[filemonitortemplates] CHECK CONSTRAINT [filemonitortemplates_FK1]
GO
