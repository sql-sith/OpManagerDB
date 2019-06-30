USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConversationWeekly_IPG0]    Script Date: 6/29/2019 5:46:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversationWeekly_IPG0](
	[ID] [bigint] NOT NULL,
	[SRC_ADDR_ID] [varbinary](16) NOT NULL,
	[DST_ADDR_ID] [varbinary](16) NOT NULL,
	[SRC_IF] [int] NOT NULL,
	[DST_IF] [int] NOT NULL,
	[APP_ID] [int] NOT NULL,
	[TOS] [int] NOT NULL,
	[OCTETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
	[MIN_OCTETS] [bigint] NOT NULL,
	[MAX_OCTETS] [bigint] NOT NULL,
	[AVG_OCTETS] [bigint] NOT NULL,
	[IS_SRC] [int] NOT NULL,
	[IP_GROUP_ID] [int] NULL,
	[SRC_MASK] [int] NOT NULL,
	[DST_MASK] [int] NOT NULL,
	[NEXTHOP] [varbinary](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [ConversationWeekly_IPG0_IDX0]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [ConversationWeekly_IPG0_IDX0] ON [dbo].[ConversationWeekly_IPG0]
(
	[SRC_IF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ConversationWeekly_IPG0_IDX1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [ConversationWeekly_IPG0_IDX1] ON [dbo].[ConversationWeekly_IPG0]
(
	[DST_IF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConversationWeekly_IPG0] ADD  DEFAULT ('0') FOR [IS_SRC]
GO
ALTER TABLE [dbo].[ConversationWeekly_IPG0] ADD  DEFAULT ('NULL') FOR [IP_GROUP_ID]
GO
