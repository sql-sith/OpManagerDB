USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLICommand]    Script Date: 6/29/2019 5:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLICommand](
	[RecordID] [varchar](250) NOT NULL,
	[Command] [varchar](200) NOT NULL,
 CONSTRAINT [C_Command_PK] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1428065751]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1428065751] ON [dbo].[CLICommand]
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLICommand]  WITH CHECK ADD  CONSTRAINT [CLI_CMD_FK] FOREIGN KEY([RecordID])
REFERENCES [dbo].[CLIInputRecord] ([RecordID])
GO
ALTER TABLE [dbo].[CLICommand] CHECK CONSTRAINT [CLI_CMD_FK]
GO
