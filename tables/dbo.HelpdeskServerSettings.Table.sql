USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HelpdeskServerSettings]    Script Date: 6/29/2019 5:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelpdeskServerSettings](
	[ID] [bigint] NOT NULL,
	[PRODUCTNAME] [varchar](100) NOT NULL,
	[PROTOCOL] [varchar](10) NOT NULL,
	[HOST] [varchar](500) NOT NULL,
	[PORT] [int] NOT NULL,
	[TECHNICIANKEY] [varchar](500) NOT NULL,
	[USERNAME] [varchar](500) NOT NULL,
	[MODE] [bit] NOT NULL,
 CONSTRAINT [HelpdeskServerSettings_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HelpdeskServerSettings] ADD  DEFAULT ((0)) FOR [MODE]
GO
