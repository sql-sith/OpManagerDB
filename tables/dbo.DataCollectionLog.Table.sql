USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataCollectionLog]    Script Date: 6/29/2019 5:46:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCollectionLog](
	[POLLID] [bigint] NOT NULL,
	[POLLTIME] [datetime] NOT NULL,
	[FAILUREREASON] [text] NOT NULL,
	[ERRORCODE] [int] NOT NULL,
 CONSTRAINT [DataCollectionLog_PK] PRIMARY KEY CLUSTERED 
(
	[POLLID] ASC,
	[POLLTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataCollectionLog] ADD  DEFAULT ('0') FOR [ERRORCODE]
GO
