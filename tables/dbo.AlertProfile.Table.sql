USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AlertProfile]    Script Date: 6/29/2019 5:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertProfile](
	[PROFILE_ID] [int] NOT NULL,
	[PROFILE_NAME] [varbinary](max) NOT NULL,
	[PROFILE_DESC] [varbinary](max) NOT NULL,
	[STATE] [int] NOT NULL,
	[DEVICE_TYPE_ID] [int] NOT NULL,
	[TRAFFIC_TYPE] [int] NOT NULL,
	[TRAFFIC_PARAM] [int] NOT NULL,
	[CREATION_TIME] [bigint] NOT NULL,
	[MODIFIED_TIME] [bigint] NOT NULL,
	[REPORT_CRITERIA] [int] NOT NULL,
	[BUSINESS_ALERT] [bit] NOT NULL,
	[STARTING_TIME_BUSINESSALERT] [int] NOT NULL,
	[ENDING_TIME_BUSINESSALERT] [int] NOT NULL,
	[TIMEZONE] [varchar](200) NOT NULL,
	[EXCLUDE_WEEKEND] [bit] NOT NULL,
 CONSTRAINT [AlertProfile_PK] PRIMARY KEY CLUSTERED 
(
	[PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ('0') FOR [CREATION_TIME]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ('0') FOR [MODIFIED_TIME]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ('1') FOR [REPORT_CRITERIA]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ((0)) FOR [BUSINESS_ALERT]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ('0') FOR [STARTING_TIME_BUSINESSALERT]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ('0') FOR [ENDING_TIME_BUSINESSALERT]
GO
ALTER TABLE [dbo].[AlertProfile] ADD  DEFAULT ((0)) FOR [EXCLUDE_WEEKEND]
GO
