USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OID_DATA]    Script Date: 6/29/2019 5:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OID_DATA](
	[OID_ID] [bigint] NOT NULL,
	[MIB_ID] [bigint] NOT NULL,
	[OID] [varchar](50) NOT NULL,
	[OID_NAME] [varchar](50) NOT NULL,
	[OID_TYPE] [int] NOT NULL,
 CONSTRAINT [OID_DATA_PK] PRIMARY KEY CLUSTERED 
(
	[OID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1464631532]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1464631532] ON [dbo].[OID_DATA]
(
	[MIB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OID_DATA] ADD  DEFAULT ('1') FOR [OID_TYPE]
GO
ALTER TABLE [dbo].[OID_DATA]  WITH CHECK ADD  CONSTRAINT [OID_DATA_FK1] FOREIGN KEY([MIB_ID])
REFERENCES [dbo].[MIB_DATA] ([MIB_ID])
GO
ALTER TABLE [dbo].[OID_DATA] CHECK CONSTRAINT [OID_DATA_FK1]
GO
