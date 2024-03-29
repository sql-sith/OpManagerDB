USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RBTaskAssocNTServices]    Script Date: 6/29/2019 5:50:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RBTaskAssocNTServices](
	[ASSOCID] [bigint] NOT NULL,
	[SERVICENAME] [varchar](200) NOT NULL,
	[DISPLAYNAME] [varchar](200) NOT NULL,
 CONSTRAINT [RBTaskAssocNTServices_PK1] PRIMARY KEY CLUSTERED 
(
	[ASSOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1623022895]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1623022895] ON [dbo].[RBTaskAssocNTServices]
(
	[ASSOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RBTaskAssocNTServices]  WITH CHECK ADD  CONSTRAINT [RBTaskAssocNTServices_FK1] FOREIGN KEY([ASSOCID])
REFERENCES [dbo].[RunBookTaskAssociation] ([ASSOCID])
GO
ALTER TABLE [dbo].[RBTaskAssocNTServices] CHECK CONSTRAINT [RBTaskAssocNTServices_FK1]
GO
