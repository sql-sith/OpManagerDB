USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Trans_Closure_Attributes]    Script Date: 6/29/2019 5:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans_Closure_Attributes](
	[VIEW_ID] [bigint] NOT NULL,
	[SOURCE_ATTRIBUTE] [varchar](40) NOT NULL,
	[DESTINATION_ATTRIBUTE] [varchar](40) NOT NULL,
 CONSTRAINT [Trans_Closure_Attributes_PK] PRIMARY KEY CLUSTERED 
(
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_767342322]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_767342322] ON [dbo].[Trans_Closure_Attributes]
(
	[VIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Trans_Closure_Attributes]  WITH CHECK ADD  CONSTRAINT [Trans_Closure_Attributes_FK] FOREIGN KEY([VIEW_ID])
REFERENCES [dbo].[Trans_Closure_Operator] ([VIEW_ID])
GO
ALTER TABLE [dbo].[Trans_Closure_Attributes] CHECK CONSTRAINT [Trans_Closure_Attributes_FK]
GO
