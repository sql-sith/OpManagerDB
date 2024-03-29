USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ServiceNowTicketDetails]    Script Date: 6/29/2019 5:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceNowTicketDetails](
	[ID] [varchar](255) NOT NULL,
	[Entity] [varchar](4000) NOT NULL,
	[Time] [bigint] NOT NULL,
 CONSTRAINT [ServiceNowTicketDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
