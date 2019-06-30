USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMApprovalDevicesRQ]    Script Date: 6/29/2019 5:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMApprovalDevicesRQ](
	[REQUEST_ID] [bigint] NOT NULL,
	[QUERY_ID] [bigint] NOT NULL,
 CONSTRAINT [NCMApprovalDevicesRQ_PK1] PRIMARY KEY CLUSTERED 
(
	[REQUEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__584955569]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__584955569] ON [dbo].[NCMApprovalDevicesRQ]
(
	[QUERY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__584955570]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__584955570] ON [dbo].[NCMApprovalDevicesRQ]
(
	[REQUEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMApprovalDevicesRQ]  WITH CHECK ADD  CONSTRAINT [NCMApprovalDevicesRQ_FK1] FOREIGN KEY([REQUEST_ID])
REFERENCES [dbo].[NCMApprovalRequest] ([REQUEST_ID])
GO
ALTER TABLE [dbo].[NCMApprovalDevicesRQ] CHECK CONSTRAINT [NCMApprovalDevicesRQ_FK1]
GO
ALTER TABLE [dbo].[NCMApprovalDevicesRQ]  WITH CHECK ADD  CONSTRAINT [NCMApprovalDevicesRQ_FK2] FOREIGN KEY([QUERY_ID])
REFERENCES [dbo].[SelectQuery] ([QUERYID])
GO
ALTER TABLE [dbo].[NCMApprovalDevicesRQ] CHECK CONSTRAINT [NCMApprovalDevicesRQ_FK2]
GO
