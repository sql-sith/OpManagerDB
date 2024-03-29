USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpIPV6Range]    Script Date: 6/29/2019 5:48:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpIPV6Range](
	[ID] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[START_ADDR_ID] [varchar](255) NOT NULL,
	[END_ADDR_ID] [varchar](255) NOT NULL,
	[NETMASK_ADDR_ID] [varchar](255) NOT NULL,
	[EXCL] [int] NOT NULL,
 CONSTRAINT [IPV6_RANGE_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__48678029]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__48678029] ON [dbo].[GrpIPV6Range]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpIPV6Range]  WITH CHECK ADD  CONSTRAINT [GrpIPV6Range_FK] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IPGroups] ([IP_GROUP_ID])
GO
ALTER TABLE [dbo].[GrpIPV6Range] CHECK CONSTRAINT [GrpIPV6Range_FK]
GO
