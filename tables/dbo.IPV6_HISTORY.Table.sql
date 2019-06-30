USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPV6_HISTORY]    Script Date: 6/29/2019 5:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPV6_HISTORY](
	[IPV6_HISTORY_ID] [bigint] NOT NULL,
	[IPV6_DETAILS_ID] [bigint] NULL,
	[IPV6_ADDRESS] [varchar](45) NOT NULL,
	[MAC_ADDRESS] [varchar](17) NULL,
	[DNSNAME] [varchar](150) NULL,
	[STATUS] [int] NULL,
	[ALIAS_NAME] [varchar](100) NULL,
	[CHANGES_IN] [varchar](100) NULL,
	[CREATED_BY] [varchar](100) NULL,
	[CREATED_TIME] [datetime] NULL,
 CONSTRAINT [IPV6_HISTORY_PK] PRIMARY KEY CLUSTERED 
(
	[IPV6_HISTORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_127747977]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_127747977] ON [dbo].[IPV6_HISTORY]
(
	[IPV6_DETAILS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_127747978]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_127747978] ON [dbo].[IPV6_HISTORY]
(
	[STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IPV6_HISTORY_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IPV6_HISTORY_IDX1] ON [dbo].[IPV6_HISTORY]
(
	[IPV6_ADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IPV6_HISTORY_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IPV6_HISTORY_IDX2] ON [dbo].[IPV6_HISTORY]
(
	[DNSNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IPV6_HISTORY_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IPV6_HISTORY_IDX3] ON [dbo].[IPV6_HISTORY]
(
	[MAC_ADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPV6_HISTORY]  WITH CHECK ADD  CONSTRAINT [IPV6_HISTORY_FK1] FOREIGN KEY([IPV6_DETAILS_ID])
REFERENCES [dbo].[IPV6_DETAILS] ([IPV6_DETAILS_ID])
GO
ALTER TABLE [dbo].[IPV6_HISTORY] CHECK CONSTRAINT [IPV6_HISTORY_FK1]
GO
ALTER TABLE [dbo].[IPV6_HISTORY]  WITH CHECK ADD  CONSTRAINT [IPV6_HISTORY_FK2] FOREIGN KEY([STATUS])
REFERENCES [dbo].[IntegerCategorySet] ([ICS_ID])
GO
ALTER TABLE [dbo].[IPV6_HISTORY] CHECK CONSTRAINT [IPV6_HISTORY_FK2]
GO
