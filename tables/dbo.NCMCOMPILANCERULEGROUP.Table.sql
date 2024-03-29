USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCOMPILANCERULEGROUP]    Script Date: 6/29/2019 5:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCOMPILANCERULEGROUP](
	[COMPRULEGROUP_ID] [bigint] NOT NULL,
	[COMPRULEGROUP_NAME] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
	[CREATED_BY] [varchar](50) NULL,
	[LAST_MODIFIED_BY] [varchar](50) NULL,
	[LASTUPDATEDTIME] [datetime] NULL,
	[PROBEID] [bigint] NULL,
	[UNIQUEID] [bigint] NOT NULL,
 CONSTRAINT [NCMCOMPILANCERULEGROUP_PK] PRIMARY KEY CLUSTERED 
(
	[UNIQUEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCOMPILANCERULEGROUP] ADD  DEFAULT ('NO_DESCRIPTION_AVAILABLE') FOR [DESCRIPTION]
GO
ALTER TABLE [dbo].[NCMCOMPILANCERULEGROUP] ADD  DEFAULT ('0') FOR [PROBEID]
GO
