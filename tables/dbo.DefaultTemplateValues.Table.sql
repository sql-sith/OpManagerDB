USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DefaultTemplateValues]    Script Date: 6/29/2019 5:47:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultTemplateValues](
	[TYPEID] [bigint] NOT NULL,
	[POLLINTERVAL] [bigint] NOT NULL,
	[FAILURETHRESHOLD] [bigint] NOT NULL,
	[INTFENABLE] [bit] NOT NULL,
	[STATUSPOLLENABLE] [bit] NOT NULL,
	[STATUSPOLLFT] [int] NOT NULL,
	[UTILTHENABLE] [bit] NOT NULL,
	[ERRTHENABLE] [bit] NOT NULL,
	[DISCTHENABLE] [bit] NOT NULL,
 CONSTRAINT [DefaultTemplateValues_PK] PRIMARY KEY CLUSTERED 
(
	[TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2113313159]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2113313159] ON [dbo].[DefaultTemplateValues]
(
	[TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DefaultTemplateValues] ADD  DEFAULT ((1)) FOR [INTFENABLE]
GO
ALTER TABLE [dbo].[DefaultTemplateValues] ADD  DEFAULT ((1)) FOR [STATUSPOLLENABLE]
GO
ALTER TABLE [dbo].[DefaultTemplateValues] ADD  DEFAULT ('1') FOR [STATUSPOLLFT]
GO
ALTER TABLE [dbo].[DefaultTemplateValues] ADD  DEFAULT ((1)) FOR [UTILTHENABLE]
GO
ALTER TABLE [dbo].[DefaultTemplateValues] ADD  DEFAULT ((1)) FOR [ERRTHENABLE]
GO
ALTER TABLE [dbo].[DefaultTemplateValues] ADD  DEFAULT ((1)) FOR [DISCTHENABLE]
GO
ALTER TABLE [dbo].[DefaultTemplateValues]  WITH CHECK ADD  CONSTRAINT [DefaultTemplateValues_FK] FOREIGN KEY([TYPEID])
REFERENCES [dbo].[InterfaceDefinitionTemplate] ([TYPEID])
GO
ALTER TABLE [dbo].[DefaultTemplateValues] CHECK CONSTRAINT [DefaultTemplateValues_FK]
GO
