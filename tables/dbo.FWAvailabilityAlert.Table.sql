USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FWAvailabilityAlert]    Script Date: 6/29/2019 5:47:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FWAvailabilityAlert](
	[FAA_ID] [bigint] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
	[TO_ADDRESS] [nvarchar](250) NOT NULL,
	[TO_NUMBER] [nvarchar](250) NOT NULL,
	[LOCATION] [nvarchar](250) NOT NULL,
	[TIME_INTERVAL] [bigint] NULL,
	[ENABLED] [bit] NULL,
	[CONTENT] [nvarchar](1500) NULL,
	[SUBJECT] [nvarchar](250) NULL,
	[ALERTTYPE] [nvarchar](50) NOT NULL,
 CONSTRAINT [FWAvailabilityAlert_PK] PRIMARY KEY CLUSTERED 
(
	[FAA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FWAvailabilityAlert] ADD  DEFAULT ('NO') FOR [TO_ADDRESS]
GO
ALTER TABLE [dbo].[FWAvailabilityAlert] ADD  DEFAULT ('NO') FOR [TO_NUMBER]
GO
ALTER TABLE [dbo].[FWAvailabilityAlert] ADD  DEFAULT ('NO') FOR [LOCATION]
GO
ALTER TABLE [dbo].[FWAvailabilityAlert] ADD  DEFAULT ('30') FOR [TIME_INTERVAL]
GO
