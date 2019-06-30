USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaPasswordProfile]    Script Date: 6/29/2019 5:45:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaPasswordProfile](
	[PASSWDPROFILE_ID] [bigint] NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[EXP_AFTER] [int] NOT NULL,
	[EXPEW_THRES] [int] NOT NULL,
	[LOGIN_AFTEREXP] [int] NOT NULL,
	[UPDATE_INTERVAL] [int] NOT NULL,
	[CHPASSWD_ONFL] [bit] NOT NULL,
	[NUMOF_OLDPASSWD] [int] NOT NULL,
 CONSTRAINT [AaaPasswordProfile_PK] PRIMARY KEY CLUSTERED 
(
	[PASSWDPROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AaaPasswordProfile_UK0] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaPasswordProfile] ADD  DEFAULT ('-1') FOR [EXP_AFTER]
GO
ALTER TABLE [dbo].[AaaPasswordProfile] ADD  DEFAULT ('-1') FOR [EXPEW_THRES]
GO
ALTER TABLE [dbo].[AaaPasswordProfile] ADD  DEFAULT ('0') FOR [LOGIN_AFTEREXP]
GO
ALTER TABLE [dbo].[AaaPasswordProfile] ADD  DEFAULT ('-1') FOR [UPDATE_INTERVAL]
GO
ALTER TABLE [dbo].[AaaPasswordProfile] ADD  DEFAULT ((1)) FOR [CHPASSWD_ONFL]
GO
ALTER TABLE [dbo].[AaaPasswordProfile] ADD  DEFAULT ('1') FOR [NUMOF_OLDPASSWD]
GO
