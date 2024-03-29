USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FirewallObjectsGroup]    Script Date: 6/29/2019 5:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirewallObjectsGroup](
	[OBJGROUPID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[NAME] [nvarchar](250) NOT NULL,
	[INTERFACE_NAME] [nvarchar](250) NULL,
	[MEMBERS] [ntext] NULL,
	[DETAILED_MEMBER_INFO] [ntext] NULL,
	[DETAILED_MEMBER_NETWORK_INFO] [ntext] NULL,
	[DETAILED_MEMBER_SUBNET_MASK] [ntext] NULL,
	[DETAILED_MEMBER_IPRANGE] [ntext] NULL,
	[DETAILED_MEMBER_IPRANGE_ID] [ntext] NULL,
	[COMMENTS] [nvarchar](1000) NULL,
	[TYPE] [nvarchar](50) NOT NULL,
	[EXTRA_COLUMN] [ntext] NULL,
 CONSTRAINT [FirewallObjectsGroup_PK] PRIMARY KEY CLUSTERED 
(
	[OBJGROUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1265199912]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1265199912] ON [dbo].[FirewallObjectsGroup]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FirewallObjectsGroup]  WITH CHECK ADD  CONSTRAINT [FirewallObjectsGroup_FK1] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FirewallObjectsGroup] CHECK CONSTRAINT [FirewallObjectsGroup_FK1]
GO
