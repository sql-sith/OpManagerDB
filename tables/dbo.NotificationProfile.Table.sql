USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NotificationProfile]    Script Date: 6/29/2019 5:49:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationProfile](
	[PROFILEID] [bigint] NOT NULL,
	[PROFILENAME] [varchar](100) NOT NULL,
	[ACTIONNAME] [varchar](100) NOT NULL,
	[STATUS] [bit] NOT NULL,
 CONSTRAINT [NotificationProfile_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotificationProfile] ADD  DEFAULT ((1)) FOR [STATUS]
GO
