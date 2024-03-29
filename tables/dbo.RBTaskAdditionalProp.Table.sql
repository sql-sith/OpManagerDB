USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RBTaskAdditionalProp]    Script Date: 6/29/2019 5:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RBTaskAdditionalProp](
	[TASKID] [bigint] NOT NULL,
	[PROPNAME] [varchar](200) NOT NULL,
	[PROPVALUE] [varchar](200) NOT NULL,
 CONSTRAINT [RBTaskAdditionalProp_PK1] PRIMARY KEY CLUSTERED 
(
	[TASKID] ASC,
	[PROPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1941427412]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1941427412] ON [dbo].[RBTaskAdditionalProp]
(
	[TASKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RBTaskAdditionalProp]  WITH CHECK ADD  CONSTRAINT [RBTaskAdditionalProp_FK1] FOREIGN KEY([TASKID])
REFERENCES [dbo].[RunBookTaskDefinition] ([TASKID])
GO
ALTER TABLE [dbo].[RBTaskAdditionalProp] CHECK CONSTRAINT [RBTaskAdditionalProp_FK1]
GO
