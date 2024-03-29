USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[User_Defined_Names]    Script Date: 6/29/2019 5:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Defined_Names](
	[ID] [int] NOT NULL,
	[IPADDRESS] [varchar](255) NOT NULL,
	[USERDNSNAMES] [varchar](255) NOT NULL,
 CONSTRAINT [User_Defined_Names_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User_Defined_Names] ADD  DEFAULT ('1') FOR [ID]
GO
