USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpIPRange]    Script Date: 6/29/2019 5:47:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpIPRange](
	[ID] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[START_ADDR_ID] [bigint] NOT NULL,
	[END_ADDR_ID] [bigint] NOT NULL,
	[NETMASK_ADDR_ID] [bigint] NOT NULL,
	[EXCL] [int] NOT NULL,
 CONSTRAINT [ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__926856237]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__926856237] ON [dbo].[GrpIPRange]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpIPRange]  WITH CHECK ADD  CONSTRAINT [GrpIPRange_FK] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IPGroups] ([IP_GROUP_ID])
GO
ALTER TABLE [dbo].[GrpIPRange] CHECK CONSTRAINT [GrpIPRange_FK]
GO
