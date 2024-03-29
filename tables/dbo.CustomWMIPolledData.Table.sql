USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomWMIPolledData]    Script Date: 6/29/2019 5:46:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomWMIPolledData](
	[COLLECTDATAID] [bigint] NOT NULL,
 CONSTRAINT [CustomWMIPolledData_PK1] PRIMARY KEY CLUSTERED 
(
	[COLLECTDATAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_252748887]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_252748887] ON [dbo].[CustomWMIPolledData]
(
	[COLLECTDATAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomWMIPolledData]  WITH CHECK ADD  CONSTRAINT [CustomWMIPolledData_FK1] FOREIGN KEY([COLLECTDATAID])
REFERENCES [dbo].[WMIPolledData] ([COLLECTDATAID])
GO
ALTER TABLE [dbo].[CustomWMIPolledData] CHECK CONSTRAINT [CustomWMIPolledData_FK1]
GO
