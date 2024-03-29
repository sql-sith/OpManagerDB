USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FirewallObjects]    Script Date: 6/29/2019 5:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirewallObjects](
	[OBJID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[NAME] [nvarchar](250) NOT NULL,
	[INTERFACE_NAME] [nvarchar](250) NULL,
	[PROTOCOL] [nvarchar](50) NULL,
	[VALUE_IN_CONFIG] [ntext] NULL,
	[SUBNET] [ntext] NULL,
	[SUBNET_MASK] [ntext] NULL,
	[SUBNETWORK_ID] [ntext] NULL,
	[START_IP] [ntext] NULL,
	[STARTIP_ID] [ntext] NULL,
	[END_IP] [ntext] NULL,
	[ENDIP_ID] [ntext] NULL,
	[IP_RANGE] [ntext] NULL,
	[IPRANGE_ID] [ntext] NULL,
	[EXTERNAL_IP] [nvarchar](100) NULL,
	[EXTERNAL_PORT] [nvarchar](50) NULL,
	[MAPPED_IP] [nvarchar](100) NULL,
	[MAPPED_PORT] [nvarchar](50) NULL,
	[TO_DISPLAY] [ntext] NULL,
	[COMMENTS] [nvarchar](1000) NULL,
	[OBJECT_TYPE] [nvarchar](50) NOT NULL,
	[SUBSETS] [ntext] NULL,
	[SUPERSETS] [ntext] NULL,
	[OVERLAPPED] [ntext] NULL,
	[USED] [int] NULL,
	[EXTRA_COLUMN2] [ntext] NULL,
 CONSTRAINT [FirewallObjects_PK] PRIMARY KEY CLUSTERED 
(
	[OBJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_389492001]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_389492001] ON [dbo].[FirewallObjects]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FirewallObjects] ADD  DEFAULT ('0') FOR [USED]
GO
ALTER TABLE [dbo].[FirewallObjects]  WITH CHECK ADD  CONSTRAINT [FirewallObjects_FK1] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FirewallObjects] CHECK CONSTRAINT [FirewallObjects_FK1]
GO
