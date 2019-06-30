USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpIPV6Network]    Script Date: 6/29/2019 5:48:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpIPV6Network](
	[ID_NET] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[NETWORK_ADDR_ID] [varchar](255) NOT NULL,
	[NETMASK_ADDR_ID] [varchar](255) NOT NULL,
	[EXCL] [int] NOT NULL,
 CONSTRAINT [IPV6_ID_NET_PK] PRIMARY KEY CLUSTERED 
(
	[ID_NET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1803304418]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1803304418] ON [dbo].[GrpIPV6Network]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpIPV6Network]  WITH CHECK ADD  CONSTRAINT [GrpIPV6Network_FK] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[GrpIPV6Network] CHECK CONSTRAINT [GrpIPV6Network_FK]
GO
