USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ImportedLogs]    Script Date: 6/29/2019 5:48:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportedLogs](
	[IL_ID] [bigint] NOT NULL,
	[FILE_NAME] [nvarchar](255) NOT NULL,
	[LOCATION] [nvarchar](255) NOT NULL,
	[LOG_TYPE] [nvarchar](50) NULL,
	[REMOTE_CLIENT] [nvarchar](50) NULL,
	[IMPORTED_TIME] [nvarchar](50) NULL,
	[SIZE] [nvarchar](50) NULL,
	[RECORDS] [bigint] NULL,
	[TIME_TAKEN] [bigint] NULL,
	[TIME_INTERVAL] [bigint] NULL,
	[PROTOCOL] [nvarchar](50) NOT NULL,
	[STATUS] [bigint] NULL,
	[MESSAGE] [nvarchar](250) NOT NULL,
	[RECORD_MARKER] [nvarchar](2500) NULL,
	[REMOTE_HOSTNAME] [nvarchar](50) NULL,
	[REMOTE_USERNAME] [nvarchar](50) NULL,
	[REMOTE_PASSWORD] [nvarchar](50) NULL,
	[REMOTE_DIR] [nvarchar](255) NULL,
	[LAST_MODIFIED_TIME] [datetime] NULL,
	[HEADER] [nvarchar](512) NULL,
	[STARTDATE] [nvarchar](50) NULL,
	[ENDDATE] [nvarchar](50) NULL,
	[FTPPORT] [int] NULL,
 CONSTRAINT [ImportedLogs_PK] PRIMARY KEY CLUSTERED 
(
	[IL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ImportedLogs] ADD  DEFAULT ('HTTP') FOR [PROTOCOL]
GO
