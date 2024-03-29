USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPGroups]    Script Date: 6/29/2019 5:48:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPGroups](
	[IP_GROUP_ID] [int] NOT NULL,
	[IP_GROUP_NAME] [nvarchar](255) NOT NULL,
	[IP_GROUP_DESC] [varbinary](max) NULL,
	[IP_GROUP_SPEED] [bigint] NOT NULL,
	[IP_GROUP_STATE] [int] NOT NULL,
	[DATASPACE] [nvarchar](50) NULL,
	[IS_TOPSITES] [int] NOT NULL,
	[ALLOCATED_BANDWIDTH] [bigint] NOT NULL,
 CONSTRAINT [IP_GROUP_ID_PK] PRIMARY KEY CLUSTERED 
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPGroups] ADD  DEFAULT ('1000000') FOR [IP_GROUP_SPEED]
GO
ALTER TABLE [dbo].[IPGroups] ADD  DEFAULT ('0') FOR [IP_GROUP_STATE]
GO
ALTER TABLE [dbo].[IPGroups]  WITH CHECK ADD  CONSTRAINT [IPGroups_FK] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[IPGroups] CHECK CONSTRAINT [IPGroups_FK]
GO
