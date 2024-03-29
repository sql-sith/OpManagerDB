USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Security_Overview_Hr]    Script Date: 6/29/2019 5:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_Overview_Hr](
	[SO_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[TYPE] [int] NULL,
	[SUBTYPE] [nvarchar](90) NOT NULL,
	[COUNT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Security_Overview_Hr_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Security_Overview_Hr_IDX1] ON [dbo].[Security_Overview_Hr]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Security_Overview_Hr_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Security_Overview_Hr_IDX2] ON [dbo].[Security_Overview_Hr]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Security_Overview_Hr_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Security_Overview_Hr_IDX3] ON [dbo].[Security_Overview_Hr]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Security_Overview_Hr] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Security_Overview_Hr] ADD  DEFAULT (NULL) FOR [TYPE]
GO
ALTER TABLE [dbo].[Security_Overview_Hr] ADD  DEFAULT ('0') FOR [SUBTYPE]
GO
ALTER TABLE [dbo].[Security_Overview_Hr] ADD  DEFAULT (NULL) FOR [COUNT]
GO
