USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ObjectToChildOneToNMapping]    Script Date: 6/29/2019 5:49:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectToChildOneToNMapping](
	[ObjToChildMapID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[OBJID] [bigint] NOT NULL,
	[NAME] [nvarchar](250) NOT NULL,
	[OBJECT_DETAILS] [ntext] NULL,
	[LINK_NEEDED] [nvarchar](50) NULL,
	[EXTRA_COLUMN] [ntext] NULL,
 CONSTRAINT [ObjectToChildOneToNMapping_PK] PRIMARY KEY CLUSTERED 
(
	[ObjToChildMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__698604091]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__698604091] ON [dbo].[ObjectToChildOneToNMapping]
(
	[OBJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ObjectToChildOneToNMapping]  WITH CHECK ADD  CONSTRAINT [ObjectToChildOneToNMapping_FK] FOREIGN KEY([OBJID])
REFERENCES [dbo].[FirewallObjects] ([OBJID])
GO
ALTER TABLE [dbo].[ObjectToChildOneToNMapping] CHECK CONSTRAINT [ObjectToChildOneToNMapping_FK]
GO
