USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FWAComplianceSectionDetails]    Script Date: 6/29/2019 5:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FWAComplianceSectionDetails](
	[FWA_SECTION_ID] [bigint] NOT NULL,
	[SECTION_NAME] [nvarchar](50) NULL,
	[RBBNAME] [ntext] NULL,
	[GENERIC_SECTION_ID_LIST] [ntext] NULL,
	[DESCRIPTION] [ntext] NULL,
	[COMPLIANCE_TYPE] [nvarchar](50) NOT NULL,
	[RBB_DETAILS_TO_DISPLAY] [ntext] NULL,
	[CHECKLIST_DISPLAY_TYPE] [nvarchar](20) NULL,
	[STATUS_SPECIFIC_DESC] [bit] NULL,
	[TO_APPEND] [nvarchar](20) NULL,
	[NODATA_STATUS_DECIDER] [nvarchar](20) NULL,
	[LINK_DETAILS] [ntext] NULL,
	[ENABLE] [bit] NOT NULL,
	[EXTRA_COLUMN1] [ntext] NULL,
 CONSTRAINT [FWAComplianceSectionDetails_PK] PRIMARY KEY CLUSTERED 
(
	[FWA_SECTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[FWAComplianceSectionDetails] ADD  DEFAULT ((0)) FOR [STATUS_SPECIFIC_DESC]
GO
ALTER TABLE [dbo].[FWAComplianceSectionDetails] ADD  DEFAULT ((1)) FOR [ENABLE]
GO
