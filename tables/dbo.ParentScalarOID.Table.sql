USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ParentScalarOID]    Script Date: 6/29/2019 5:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentScalarOID](
	[ID] [bigint] NOT NULL,
	[PARENT_OID] [varchar](50) NOT NULL,
	[PARENT_OID_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [ParentScalarOID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
