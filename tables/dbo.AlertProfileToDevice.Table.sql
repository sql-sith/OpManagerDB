USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AlertProfileToDevice]    Script Date: 6/29/2019 5:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertProfileToDevice](
	[APDEVICE_ID] [int] NOT NULL,
	[PROFILE_ID] [int] NOT NULL,
	[DEVICE_ID] [int] NOT NULL,
 CONSTRAINT [AlertProfileToDevice_PK] PRIMARY KEY CLUSTERED 
(
	[PROFILE_ID] ASC,
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1902312212]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1902312212] ON [dbo].[AlertProfileToDevice]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1902312213]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1902312213] ON [dbo].[AlertProfileToDevice]
(
	[PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AlertProfileToDevice]  WITH CHECK ADD  CONSTRAINT [AlertProfileToDevice_FK1] FOREIGN KEY([PROFILE_ID])
REFERENCES [dbo].[AlertProfile] ([PROFILE_ID])
GO
ALTER TABLE [dbo].[AlertProfileToDevice] CHECK CONSTRAINT [AlertProfileToDevice_FK1]
GO
ALTER TABLE [dbo].[AlertProfileToDevice]  WITH CHECK ADD  CONSTRAINT [AlertProfileToDevice_FK2] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[AlertProfileToDevice] CHECK CONSTRAINT [AlertProfileToDevice_FK2]
GO
