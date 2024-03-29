USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DCMEntityDetails]    Script Date: 6/29/2019 5:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DCMEntityDetails](
	[ENTITYID] [int] NOT NULL,
	[MOID] [bigint] NOT NULL,
	[MONAME] [varchar](50) NOT NULL,
	[ENTITYNAME] [varchar](50) NOT NULL,
	[ENTITYADDRESS] [varchar](50) NOT NULL,
	[ENTITYTYPE] [varchar](50) NOT NULL,
 CONSTRAINT [DCMEntityDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ENTITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DCMEntityDetails_UK0] UNIQUE NONCLUSTERED 
(
	[MONAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DCMEntityDetails_UK1] UNIQUE NONCLUSTERED 
(
	[ENTITYNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_552440478]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_552440478] ON [dbo].[DCMEntityDetails]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DCMEntityDetails]  WITH CHECK ADD  CONSTRAINT [DCMEntityDetails_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[DCMEntityDetails] CHECK CONSTRAINT [DCMEntityDetails_FK1]
GO
