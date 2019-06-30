USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPv6Address]    Script Date: 6/29/2019 5:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPv6Address](
	[ADDRESSID] [bigint] NOT NULL,
	[DOMAINNAME] [varchar](250) NULL,
	[ADDRESS] [varchar](40) NOT NULL,
 CONSTRAINT [IPv6Address_PK] PRIMARY KEY CLUSTERED 
(
	[ADDRESSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__703293222]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__703293222] ON [dbo].[IPv6Address]
(
	[ADDRESSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPv6Address]  WITH CHECK ADD  CONSTRAINT [IPv6Address_FK1] FOREIGN KEY([ADDRESSID])
REFERENCES [dbo].[Address] ([ADDRESSID])
GO
ALTER TABLE [dbo].[IPv6Address] CHECK CONSTRAINT [IPv6Address_FK1]
GO
