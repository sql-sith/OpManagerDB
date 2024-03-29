USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPRange]    Script Date: 6/29/2019 5:48:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPRange](
	[RANGE_ID] [bigint] NOT NULL,
	[DEPT_ID] [bigint] NOT NULL,
	[START_IP] [nvarchar](48) NOT NULL,
	[END_IP] [nvarchar](48) NOT NULL,
	[NETMASK] [nvarchar](48) NOT NULL,
 CONSTRAINT [IPRange_PK] PRIMARY KEY CLUSTERED 
(
	[RANGE_ID] ASC,
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_382993571]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_382993571] ON [dbo].[IPRange]
(
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPRange]  WITH CHECK ADD  CONSTRAINT [IPRange_FK1] FOREIGN KEY([DEPT_ID])
REFERENCES [dbo].[Department] ([DEPT_ID])
GO
ALTER TABLE [dbo].[IPRange] CHECK CONSTRAINT [IPRange_FK1]
GO
