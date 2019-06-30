USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataObj_Variables]    Script Date: 6/29/2019 5:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataObj_Variables](
	[TEMPLATE_ID] [bigint] NOT NULL,
	[VARIABLE_NAME] [varchar](100) NOT NULL,
	[PERSONALITY_NAME] [varchar](240) NOT NULL,
 CONSTRAINT [DataObj_Var_PK] PRIMARY KEY CLUSTERED 
(
	[TEMPLATE_ID] ASC,
	[VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1484024657]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1484024657] ON [dbo].[DataObj_Variables]
(
	[TEMPLATE_ID] ASC,
	[VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataObj_Variables]  WITH CHECK ADD  CONSTRAINT [DataObj_Var_FK] FOREIGN KEY([TEMPLATE_ID], [VARIABLE_NAME])
REFERENCES [dbo].[Template_Data] ([TEMPLATE_ID], [VARIABLE_NAME])
GO
ALTER TABLE [dbo].[DataObj_Variables] CHECK CONSTRAINT [DataObj_Var_FK]
GO
