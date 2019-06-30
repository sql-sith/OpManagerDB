USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMClientProps]    Script Date: 6/29/2019 5:49:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMClientProps](
	[PROPERTYID] [bigint] NOT NULL,
	[PROPERTYNAME] [varchar](100) NOT NULL,
	[PROPERTYVALUE] [varbinary](max) NULL,
 CONSTRAINT [NCMClientProps_PK] PRIMARY KEY CLUSTERED 
(
	[PROPERTYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [NCMClientProps_UK0] UNIQUE NONCLUSTERED 
(
	[PROPERTYNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
