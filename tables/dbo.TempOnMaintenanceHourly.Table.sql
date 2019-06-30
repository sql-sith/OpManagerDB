USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TempOnMaintenanceHourly]    Script Date: 6/29/2019 5:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempOnMaintenanceHourly](
	[ELEMENTID] [bigint] NOT NULL,
	[HOURTIME] [datetime] NOT NULL,
	[DURATION] [int] NOT NULL,
 CONSTRAINT [TempOnMaintenanceHourly_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC,
	[HOURTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
