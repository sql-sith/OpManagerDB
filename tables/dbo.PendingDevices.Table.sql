USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PendingDevices]    Script Date: 6/29/2019 5:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PendingDevices](
	[DKEY] [varchar](200) NULL,
	[NAME] [varchar](200) NULL,
	[VALUE] [varchar](200) NULL
) ON [PRIMARY]
GO
