USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DIPCredentials]    Script Date: 6/29/2019 5:47:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIPCredentials](
	[DIPID] [bigint] NOT NULL,
	[CREDENTIAL_NAME] [nvarchar](100) NOT NULL,
	[CREDENTIAL_VALUE] [varbinary](max) NOT NULL,
 CONSTRAINT [DIPCredentials_PK] PRIMARY KEY CLUSTERED 
(
	[DIPID] ASC,
	[CREDENTIAL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__526461389]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__526461389] ON [dbo].[DIPCredentials]
(
	[DIPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIPCredentials]  WITH CHECK ADD  CONSTRAINT [DIPCredentials_FK] FOREIGN KEY([DIPID])
REFERENCES [dbo].[DeviceInfoProfiles] ([DIPID])
GO
ALTER TABLE [dbo].[DIPCredentials] CHECK CONSTRAINT [DIPCredentials_FK]
GO
