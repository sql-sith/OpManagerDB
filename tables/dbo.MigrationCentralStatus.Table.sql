USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[MigrationCentralStatus]    Script Date: 6/29/2019 5:49:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MigrationCentralStatus](
	[CENTRAL_ID] [bigint] NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[PROTOCOL] [varchar](25) NOT NULL,
	[PORTNUMBER] [int] NOT NULL,
	[ACTION_STATUS] [int] NULL,
 CONSTRAINT [MigrationCentralStatus_PK] PRIMARY KEY CLUSTERED 
(
	[CENTRAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_240844678]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_240844678] ON [dbo].[MigrationCentralStatus]
(
	[CENTRAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MigrationCentralStatus]  WITH CHECK ADD  CONSTRAINT [MigrationCentralStatus_FK1] FOREIGN KEY([CENTRAL_ID])
REFERENCES [dbo].[MigrationDataID] ([ID])
GO
ALTER TABLE [dbo].[MigrationCentralStatus] CHECK CONSTRAINT [MigrationCentralStatus_FK1]
GO
