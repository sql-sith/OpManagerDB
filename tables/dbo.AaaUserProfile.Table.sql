USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaUserProfile]    Script Date: 6/29/2019 5:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaUserProfile](
	[USER_ID] [bigint] NOT NULL,
	[ALIAS] [varchar](50) NULL,
	[DOB] [bigint] NULL,
	[GH_ID] [bigint] NOT NULL,
	[TIMEZONE] [varchar](50) NOT NULL,
	[LANGUAGE_CODE] [varchar](2) NULL,
	[COUNTRY_CODE] [varchar](2) NULL,
 CONSTRAINT [AaaUserProfile_PK] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_855317834]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_855317834] ON [dbo].[AaaUserProfile]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_855317835]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_855317835] ON [dbo].[AaaUserProfile]
(
	[GH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaUserProfile] ADD  DEFAULT ('GMT') FOR [TIMEZONE]
GO
ALTER TABLE [dbo].[AaaUserProfile] ADD  DEFAULT ('en') FOR [LANGUAGE_CODE]
GO
ALTER TABLE [dbo].[AaaUserProfile] ADD  DEFAULT ('US') FOR [COUNTRY_CODE]
GO
ALTER TABLE [dbo].[AaaUserProfile]  WITH CHECK ADD  CONSTRAINT [AaaUserProfile_FK1] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[AaaUserProfile] CHECK CONSTRAINT [AaaUserProfile_FK1]
GO
ALTER TABLE [dbo].[AaaUserProfile]  WITH CHECK ADD  CONSTRAINT [AaaUserProfile_FK2] FOREIGN KEY([GH_ID])
REFERENCES [dbo].[AaaGenderHonorific] ([GH_ID])
GO
ALTER TABLE [dbo].[AaaUserProfile] CHECK CONSTRAINT [AaaUserProfile_FK2]
GO
