USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Event_2019_06_16_16]    Script Date: 6/29/2019 5:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_2019_06_16_16](
	[ID] [int] NOT NULL,
	[TEXT] [varchar](8000) NULL,
	[CATEGORY] [varchar](100) NULL,
	[DDOMAIN] [varchar](100) NULL,
	[NETWORK] [varchar](100) NULL,
	[NODE] [varchar](100) NULL,
	[ENTITY] [varchar](250) NULL,
	[SEVERITY] [int] NULL,
	[TTIME] [bigint] NULL,
	[SOURCE] [varchar](100) NULL,
	[HELPURL] [varchar](100) NULL,
	[WEBNMS] [varchar](100) NULL,
	[GROUPNAME] [varchar](100) NULL,
	[OWNERNAME] [varchar](25) NOT NULL,
	[ALARMCODE] [varchar](3000) NULL,
	[DISPLAYNAME] [varchar](100) NULL,
	[EVENTTYPE] [varchar](255) NULL,
	[POLLID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[OWNERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event_2019_06_16_16] ADD  DEFAULT ((-1)) FOR [POLLID]
GO
