USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SYSLOGFACILITIES]    Script Date: 6/29/2019 5:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSLOGFACILITIES](
	[FACILITYID] [int] NOT NULL,
	[FACILITYNAME] [varchar](100) NULL,
 CONSTRAINT [SYSLOGFACILITIES_PK1] PRIMARY KEY CLUSTERED 
(
	[FACILITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
