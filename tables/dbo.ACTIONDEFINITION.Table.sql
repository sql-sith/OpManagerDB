USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ACTIONDEFINITION]    Script Date: 6/29/2019 5:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACTIONDEFINITION](
	[ACTIONID] [bigint] NOT NULL,
	[ACTIONTYPEID] [int] NOT NULL,
	[PROPERTIES] [varchar](250) NOT NULL,
 CONSTRAINT [ACTIONDEFINITION_PK1] PRIMARY KEY CLUSTERED 
(
	[ACTIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1704188630]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1704188630] ON [dbo].[ACTIONDEFINITION]
(
	[ACTIONTYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACTIONDEFINITION]  WITH CHECK ADD  CONSTRAINT [ACTIONDEFINITION_FK1] FOREIGN KEY([ACTIONTYPEID])
REFERENCES [dbo].[ACTIONTYPES] ([ACTIONTYPEID])
GO
ALTER TABLE [dbo].[ACTIONDEFINITION] CHECK CONSTRAINT [ACTIONDEFINITION_FK1]
GO
