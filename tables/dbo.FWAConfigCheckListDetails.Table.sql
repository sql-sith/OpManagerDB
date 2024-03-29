USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FWAConfigCheckListDetails]    Script Date: 6/29/2019 5:47:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FWAConfigCheckListDetails](
	[GENERIC_SECTION_ID] [bigint] NOT NULL,
	[SERVICENAME] [nvarchar](100) NOT NULL,
	[DESCRIPTION] [ntext] NULL,
	[RBBNAME] [nvarchar](100) NULL,
	[STD_PORTS] [nvarchar](250) NULL,
	[STD_PROTOCOLS] [nvarchar](250) NULL,
	[CUST_PORTS] [nvarchar](250) NULL,
	[CUST_PROTOCOLS] [nvarchar](250) NULL,
	[IGNORE_RID] [nvarchar](250) NULL,
	[COLUMNS_TO_DISPLAY] [nvarchar](250) NULL,
	[TYPE] [bigint] NULL,
	[DISPLAY_TYPE] [nvarchar](20) NULL,
	[STATUS_DECIDER] [nvarchar](20) NULL,
	[ENABLE] [bit] NOT NULL,
	[EXTRA_COLUMN1] [ntext] NULL,
 CONSTRAINT [FWAConfigCheckListDetails_PK] PRIMARY KEY CLUSTERED 
(
	[GENERIC_SECTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[FWAConfigCheckListDetails] ADD  DEFAULT ('0') FOR [TYPE]
GO
ALTER TABLE [dbo].[FWAConfigCheckListDetails] ADD  DEFAULT ((1)) FOR [ENABLE]
GO
