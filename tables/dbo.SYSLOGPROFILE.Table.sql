USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SYSLOGPROFILE]    Script Date: 6/29/2019 5:52:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSLOGPROFILE](
	[PROFILEID] [bigint] NOT NULL,
	[DESTINATIONHOST] [varchar](255) NOT NULL,
	[DESTINATIONPORT] [int] NOT NULL,
	[FACILITY] [int] NOT NULL,
	[SEVERITY] [int] NOT NULL,
	[VARIABLES] [varchar](4000) NOT NULL,
 CONSTRAINT [SYSLOGPROFILE_PK] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_175551135]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_175551135] ON [dbo].[SYSLOGPROFILE]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SYSLOGPROFILE]  WITH CHECK ADD  CONSTRAINT [SYSLOGPROFILE_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[NotificationProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[SYSLOGPROFILE] CHECK CONSTRAINT [SYSLOGPROFILE_FK1]
GO
