USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPV6_DETAILS]    Script Date: 6/29/2019 5:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPV6_DETAILS](
	[IPV6_DETAILS_ID] [bigint] NOT NULL,
	[MAC_DETAILS_ID] [bigint] NULL,
	[SUBNET_V6_ID] [bigint] NULL,
	[IPV6_ADDRESS] [varchar](45) NOT NULL,
	[DNSNAME] [varchar](150) NULL,
	[FORWARD_LOOKUP] [varchar](45) NULL,
	[STATUS] [int] NULL,
	[DNS_STATUS] [int] NULL,
	[TRANSIENT_FROM] [bigint] NULL,
	[ALIAS_NAME] [varchar](100) NULL,
	[LAST_MODIFIED_BY] [varchar](100) NULL,
	[LAST_MODIFIED_TIME] [datetime] NULL,
	[CREATED_BY] [varchar](100) NULL,
	[CREATED_TIME] [datetime] NULL,
 CONSTRAINT [IPV6_DETAILS_PK] PRIMARY KEY CLUSTERED 
(
	[IPV6_DETAILS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IPV6_DETAILS_UK1] UNIQUE NONCLUSTERED 
(
	[IPV6_DETAILS_ID] ASC,
	[MAC_DETAILS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IPV6_DETAILS_UK2] UNIQUE NONCLUSTERED 
(
	[IPV6_DETAILS_ID] ASC,
	[SUBNET_V6_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IPV6_DETAILS_UK3] UNIQUE NONCLUSTERED 
(
	[IPV6_ADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2038156855]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2038156855] ON [dbo].[IPV6_DETAILS]
(
	[MAC_DETAILS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2038156856]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2038156856] ON [dbo].[IPV6_DETAILS]
(
	[STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2038156857]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2038156857] ON [dbo].[IPV6_DETAILS]
(
	[SUBNET_V6_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2038156858]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2038156858] ON [dbo].[IPV6_DETAILS]
(
	[DNS_STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IPV6_DETAILS_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IPV6_DETAILS_IDX1] ON [dbo].[IPV6_DETAILS]
(
	[DNSNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPV6_DETAILS]  WITH CHECK ADD  CONSTRAINT [IPV6_DETAILS_FK1] FOREIGN KEY([MAC_DETAILS_ID])
REFERENCES [dbo].[MAC_DETAILS] ([MAC_DETAILS_ID])
GO
ALTER TABLE [dbo].[IPV6_DETAILS] CHECK CONSTRAINT [IPV6_DETAILS_FK1]
GO
ALTER TABLE [dbo].[IPV6_DETAILS]  WITH CHECK ADD  CONSTRAINT [IPV6_DETAILS_FK2] FOREIGN KEY([STATUS])
REFERENCES [dbo].[IntegerCategorySet] ([ICS_ID])
GO
ALTER TABLE [dbo].[IPV6_DETAILS] CHECK CONSTRAINT [IPV6_DETAILS_FK2]
GO
ALTER TABLE [dbo].[IPV6_DETAILS]  WITH CHECK ADD  CONSTRAINT [IPV6_DETAILS_FK3] FOREIGN KEY([SUBNET_V6_ID])
REFERENCES [dbo].[SUBNET_V6] ([SUBNET_V6_ID])
GO
ALTER TABLE [dbo].[IPV6_DETAILS] CHECK CONSTRAINT [IPV6_DETAILS_FK3]
GO
ALTER TABLE [dbo].[IPV6_DETAILS]  WITH CHECK ADD  CONSTRAINT [IPV6_DETAILS_FK4] FOREIGN KEY([DNS_STATUS])
REFERENCES [dbo].[IntegerCategorySet] ([ICS_ID])
GO
ALTER TABLE [dbo].[IPV6_DETAILS] CHECK CONSTRAINT [IPV6_DETAILS_FK4]
GO
