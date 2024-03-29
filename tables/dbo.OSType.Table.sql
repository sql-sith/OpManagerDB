USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OSType]    Script Date: 6/29/2019 5:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OSType](
	[OSID] [bigint] NOT NULL,
	[OSNAME] [varchar](100) NOT NULL,
	[ICON] [varchar](100) NOT NULL,
	[BASE_TYPE] [varchar](100) NULL,
 CONSTRAINT [OSType_PK] PRIMARY KEY CLUSTERED 
(
	[OSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OSType] ADD  DEFAULT ('/images/opu_spacer.gif') FOR [ICON]
GO
