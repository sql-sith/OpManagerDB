USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[COMMONTHRESHOLDVALUES]    Script Date: 6/29/2019 5:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMONTHRESHOLDVALUES](
	[COMMONTHRESHOLDID] [bigint] NOT NULL,
	[THRESHOLDCONDITION] [varchar](10) NULL,
	[THRESHOLDVALUES] [float] NULL,
	[THRESHOLDUNITS] [varchar](100) NULL,
	[SEVERITY] [int] NOT NULL,
	[MESSAGE] [varchar](4000) NULL,
	[FAILURETHRESHOLD] [int] NOT NULL,
 CONSTRAINT [COMMONTHRESHOLDVALUES_PK] PRIMARY KEY CLUSTERED 
(
	[COMMONTHRESHOLDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMMONTHRESHOLDVALUES] ADD  DEFAULT ('3') FOR [SEVERITY]
GO
