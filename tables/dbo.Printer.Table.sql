USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Printer]    Script Date: 6/29/2019 5:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Printer](
	[RESOURCEID] [bigint] NOT NULL,
	[DEVICEINDEX] [int] NULL,
 CONSTRAINT [Printer_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1847464519]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1847464519] ON [dbo].[Printer]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Printer]  WITH CHECK ADD  CONSTRAINT [Printer_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NetworkElement] ([RESOURCEID])
GO
ALTER TABLE [dbo].[Printer] CHECK CONSTRAINT [Printer_FK1]
GO
