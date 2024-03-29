USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[filemonitorstatus]    Script Date: 6/29/2019 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filemonitorstatus](
	[statusid] [bigint] NOT NULL,
	[filemonitorid] [bigint] NOT NULL,
	[instance] [varchar](100) NOT NULL,
	[status] [int] NOT NULL,
	[failurecount] [int] NOT NULL,
	[errorcode] [int] NOT NULL,
 CONSTRAINT [filemonitorstatus_PK] PRIMARY KEY CLUSTERED 
(
	[statusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [filemonitorstatus_UK0] UNIQUE NONCLUSTERED 
(
	[filemonitorid] ASC,
	[instance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2070000355]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2070000355] ON [dbo].[filemonitorstatus]
(
	[filemonitorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[filemonitorstatus] ADD  DEFAULT ('0') FOR [errorcode]
GO
ALTER TABLE [dbo].[filemonitorstatus]  WITH CHECK ADD  CONSTRAINT [filemonitorstatus_FK1] FOREIGN KEY([filemonitorid])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[filemonitorstatus] CHECK CONSTRAINT [filemonitorstatus_FK1]
GO
