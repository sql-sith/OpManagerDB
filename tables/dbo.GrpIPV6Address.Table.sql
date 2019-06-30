USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpIPV6Address]    Script Date: 6/29/2019 5:47:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpIPV6Address](
	[IP_ID] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[ADDR_ID] [varchar](255) NOT NULL,
	[EXCL] [int] NOT NULL,
 CONSTRAINT [IPV6_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__672375204]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__672375204] ON [dbo].[GrpIPV6Address]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpIPV6Address]  WITH CHECK ADD  CONSTRAINT [GrpIPV6Address_FK] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[GrpIPV6Address] CHECK CONSTRAINT [GrpIPV6Address_FK]
GO
