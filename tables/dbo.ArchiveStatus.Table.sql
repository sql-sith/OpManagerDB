USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ArchiveStatus]    Script Date: 6/29/2019 5:46:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveStatus](
	[DB_ID] [bigint] NOT NULL,
	[IS_ARCHIVAL_RUNNING] [bit] NOT NULL,
 CONSTRAINT [ArchiveStatus_PK] PRIMARY KEY CLUSTERED 
(
	[DB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArchiveStatus] ADD  DEFAULT ((0)) FOR [IS_ARCHIVAL_RUNNING]
GO
