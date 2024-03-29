USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Collectors]    Script Date: 6/29/2019 5:46:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collectors](
	[CID] [bigint] NOT NULL,
	[HOSTNAME] [nvarchar](96) NOT NULL,
	[START_ID] [bigint] NOT NULL,
	[WEBSERVERPORT] [int] NOT NULL,
	[COLLECTOR_STATUS] [bit] NULL,
	[USEHTTPS] [bit] NOT NULL,
	[USERNAME] [nvarchar](90) NULL,
	[ACCESS_KEY] [varbinary](max) NOT NULL,
	[ISPROXYCONFIGURED] [bit] NOT NULL,
	[Converted] [bit] NOT NULL,
	[DISPLAYNAME] [nvarchar](96) NOT NULL,
	[APIKEY] [varchar](250) NULL,
	[LICENSEMGMT_STATUS] [bit] NOT NULL,
	[UID] [varbinary](max) NULL,
 CONSTRAINT [Collectors_PK] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Collectors_UK1] UNIQUE NONCLUSTERED 
(
	[HOSTNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Collectors_UK2] UNIQUE NONCLUSTERED 
(
	[DISPLAYNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Collectors_UK3]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [Collectors_UK3] ON [dbo].[Collectors]
(
	[APIKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Collectors] ADD  DEFAULT ((0)) FOR [COLLECTOR_STATUS]
GO
ALTER TABLE [dbo].[Collectors] ADD  DEFAULT ((0)) FOR [USEHTTPS]
GO
ALTER TABLE [dbo].[Collectors] ADD  DEFAULT ((0)) FOR [ISPROXYCONFIGURED]
GO
ALTER TABLE [dbo].[Collectors] ADD  DEFAULT ((0)) FOR [Converted]
GO
ALTER TABLE [dbo].[Collectors] ADD  DEFAULT ((1)) FOR [LICENSEMGMT_STATUS]
GO
