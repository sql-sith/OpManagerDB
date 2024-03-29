USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EMCIsilonSMBShares]    Script Date: 6/29/2019 5:47:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMCIsilonSMBShares](
	[DEVICE_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[PATH] [varchar](500) NOT NULL,
 CONSTRAINT [EMCIsilonSMBShares_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__161780350]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__161780350] ON [dbo].[EMCIsilonSMBShares]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMCIsilonSMBShares]  WITH CHECK ADD  CONSTRAINT [EMCIsilonSMBShares_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EMCIsilonSMBShares] CHECK CONSTRAINT [EMCIsilonSMBShares_FK1]
GO
