USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NetworkInventory]    Script Date: 6/29/2019 5:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkInventory](
	[LASTMODIFIEDTIME] [varchar](25) NULL,
	[MODEL] [varchar](50) NULL,
	[TYPE] [varchar](50) NULL,
	[CONTACT] [varchar](50) NULL,
	[CLASSNAME] [varchar](50) NULL,
	[MANAGEDOBJECTNAME] [varchar](50) NULL,
	[OPERATIONALSTATUS] [varchar](50) NULL,
	[NAME] [varchar](50) NOT NULL,
	[LOCATION] [varchar](50) NULL,
	[ADMINSTATUS] [varchar](50) NULL,
	[VENDOR] [varchar](50) NULL,
	[DESCRIPTION] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NetworkInventory0_ndx]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [NetworkInventory0_ndx] ON [dbo].[NetworkInventory]
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
