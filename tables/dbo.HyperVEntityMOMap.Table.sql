USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HyperVEntityMOMap]    Script Date: 6/29/2019 5:48:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HyperVEntityMOMap](
	[ENTITYID] [bigint] NOT NULL,
	[ENTITYTYPE] [varchar](100) NOT NULL,
	[ENTITYNAME] [varchar](250) NOT NULL,
	[MOID] [bigint] NOT NULL,
 CONSTRAINT [HyperVEntityMOMap_PK] PRIMARY KEY CLUSTERED 
(
	[ENTITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
