USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProcessTicket]    Script Date: 6/29/2019 5:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessTicket](
	[ID] [bigint] NOT NULL,
	[Entity] [varchar](4000) NOT NULL,
	[Time] [bigint] NOT NULL,
 CONSTRAINT [ProcessTicket_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
