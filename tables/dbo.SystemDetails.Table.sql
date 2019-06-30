USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SystemDetails]    Script Date: 6/29/2019 5:52:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemDetails](
	[RESOURCEID] [bigint] NOT NULL,
	[SYSTEMUPTIME] [bigint] NOT NULL,
	[NUMUSERS] [bigint] NULL,
	[NUMPROCESSES] [bigint] NULL,
	[MAXPROCESSES] [int] NULL,
 CONSTRAINT [SystemDetails_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__978201920]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__978201920] ON [dbo].[SystemDetails]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemDetails]  WITH CHECK ADD  CONSTRAINT [SystemDetails_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NetworkElement] ([RESOURCEID])
GO
ALTER TABLE [dbo].[SystemDetails] CHECK CONSTRAINT [SystemDetails_FK1]
GO
