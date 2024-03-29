USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SmsServerSettings]    Script Date: 6/29/2019 5:51:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsServerSettings](
	[SMSSERVERID] [bigint] NOT NULL,
	[PORT] [nvarchar](200) NOT NULL,
	[TYPE] [nvarchar](200) NULL,
	[MESSAGE] [nvarchar](250) NULL,
 CONSTRAINT [SmsServerSettings_PK] PRIMARY KEY CLUSTERED 
(
	[SMSSERVERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
