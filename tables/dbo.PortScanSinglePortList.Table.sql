USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PortScanSinglePortList]    Script Date: 6/29/2019 5:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortScanSinglePortList](
	[ID] [bigint] NOT NULL,
	[PORT_LIST] [varchar](150) NOT NULL,
 CONSTRAINT [PortScanSinglePortList_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
