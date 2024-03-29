USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaContactInfo]    Script Date: 6/29/2019 5:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaContactInfo](
	[CONTACTINFO_ID] [bigint] NOT NULL,
	[EMAILID] [varchar](100) NULL,
	[LANDLINE] [varchar](30) NULL,
	[MOBILE] [varchar](30) NULL,
	[FAX] [varchar](30) NULL,
	[WEB_URL] [varchar](50) NULL,
	[RES_PHONE] [varchar](30) NULL,
 CONSTRAINT [AaaContactInfo_PK] PRIMARY KEY CLUSTERED 
(
	[CONTACTINFO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
