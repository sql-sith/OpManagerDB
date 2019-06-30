USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserToTools]    Script Date: 6/29/2019 5:52:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToTools](
	[ID] [bigint] NOT NULL,
	[UNAME] [varchar](100) NULL,
	[TOOL_ID] [varchar](50) NOT NULL,
 CONSTRAINT [UserToTools_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__102594942]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__102594942] ON [dbo].[UserToTools]
(
	[UNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserToTools]  WITH CHECK ADD  CONSTRAINT [UserToTools_FK1] FOREIGN KEY([UNAME])
REFERENCES [dbo].[OpUser] ([NAME])
GO
ALTER TABLE [dbo].[UserToTools] CHECK CONSTRAINT [UserToTools_FK1]
GO
