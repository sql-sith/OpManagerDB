USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EMCVNXeCIFSShares]    Script Date: 6/29/2019 5:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMCVNXeCIFSShares](
	[DEVICE_ID] [bigint] NOT NULL,
	[ID] [varchar](250) NOT NULL,
	[NAME] [varchar](250) NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[LOCALPATH] [varchar](250) NULL,
	[EXPORTPATH] [varchar](250) NULL,
 CONSTRAINT [EMCVNXeCIFSShares_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_838542109]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_838542109] ON [dbo].[EMCVNXeCIFSShares]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMCVNXeCIFSShares]  WITH CHECK ADD  CONSTRAINT [EMCVNXeCIFSShares_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EMCVNXeCIFSShares] CHECK CONSTRAINT [EMCVNXeCIFSShares_FK]
GO
