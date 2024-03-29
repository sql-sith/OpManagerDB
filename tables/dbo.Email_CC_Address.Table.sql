USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Email_CC_Address]    Script Date: 6/29/2019 5:47:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_CC_Address](
	[TASK_TEMPLATE_ID] [bigint] NOT NULL,
	[CC_ADDRESS_EXPR_ID] [bigint] NOT NULL,
 CONSTRAINT [Email_CC_Address_PK] PRIMARY KEY CLUSTERED 
(
	[TASK_TEMPLATE_ID] ASC,
	[CC_ADDRESS_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2001966363]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2001966363] ON [dbo].[Email_CC_Address]
(
	[CC_ADDRESS_EXPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1736535756]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1736535756] ON [dbo].[Email_CC_Address]
(
	[TASK_TEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Email_CC_Address]  WITH CHECK ADD  CONSTRAINT [Email_CC_Address_FK] FOREIGN KEY([TASK_TEMPLATE_ID])
REFERENCES [dbo].[Email_Task] ([TASK_TEMPLATE_ID])
GO
ALTER TABLE [dbo].[Email_CC_Address] CHECK CONSTRAINT [Email_CC_Address_FK]
GO
ALTER TABLE [dbo].[Email_CC_Address]  WITH CHECK ADD  CONSTRAINT [Email_CC_Address_FK1] FOREIGN KEY([CC_ADDRESS_EXPR_ID])
REFERENCES [dbo].[String_Expressions] ([STRING_EXPRESSION_ID])
GO
ALTER TABLE [dbo].[Email_CC_Address] CHECK CONSTRAINT [Email_CC_Address_FK1]
GO
