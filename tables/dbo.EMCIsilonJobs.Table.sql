USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EMCIsilonJobs]    Script Date: 6/29/2019 5:47:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMCIsilonJobs](
	[DEVICE_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[POLICY] [varchar](250) NOT NULL,
	[DESCRIPTION] [varchar](1000) NOT NULL,
 CONSTRAINT [EMCIsilonJobs_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__428987222]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__428987222] ON [dbo].[EMCIsilonJobs]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMCIsilonJobs]  WITH CHECK ADD  CONSTRAINT [EMCIsilonJobs_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EMCIsilonJobs] CHECK CONSTRAINT [EMCIsilonJobs_FK1]
GO
