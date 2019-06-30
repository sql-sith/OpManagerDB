USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SyslogBlockedHosts]    Script Date: 6/29/2019 5:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyslogBlockedHosts](
	[HOST_ID] [bigint] NOT NULL,
	[HOSTNAME] [varbinary](max) NOT NULL,
	[ALLOWEDTIME] [datetime] NOT NULL,
 CONSTRAINT [SyslogBlockedHosts_PK] PRIMARY KEY CLUSTERED 
(
	[HOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
