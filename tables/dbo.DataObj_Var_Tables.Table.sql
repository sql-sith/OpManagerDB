USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DataObj_Var_Tables]    Script Date: 6/29/2019 5:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataObj_Var_Tables](
	[DATAOBJ_VAR_TABLE_ID] [bigint] NOT NULL,
	[TEMPLATE_ID] [bigint] NOT NULL,
	[VARIABLE_NAME] [varchar](100) NOT NULL,
	[TABLE_NAME] [varchar](40) NOT NULL,
	[TABLE_ARRAY_INDEX] [int] NOT NULL,
 CONSTRAINT [Data_Obj_Var_Tables_PK] PRIMARY KEY CLUSTERED 
(
	[DATAOBJ_VAR_TABLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DataObj_Var_Tables_UK] UNIQUE NONCLUSTERED 
(
	[TEMPLATE_ID] ASC,
	[VARIABLE_NAME] ASC,
	[TABLE_NAME] ASC,
	[TABLE_ARRAY_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_238981525]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_238981525] ON [dbo].[DataObj_Var_Tables]
(
	[TEMPLATE_ID] ASC,
	[VARIABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataObj_Var_Tables] ADD  DEFAULT ('-1') FOR [TABLE_ARRAY_INDEX]
GO
ALTER TABLE [dbo].[DataObj_Var_Tables]  WITH CHECK ADD  CONSTRAINT [DataObj_Var_Tables_FK] FOREIGN KEY([TEMPLATE_ID], [VARIABLE_NAME])
REFERENCES [dbo].[DataObj_Variables] ([TEMPLATE_ID], [VARIABLE_NAME])
GO
ALTER TABLE [dbo].[DataObj_Var_Tables] CHECK CONSTRAINT [DataObj_Var_Tables_FK]
GO
