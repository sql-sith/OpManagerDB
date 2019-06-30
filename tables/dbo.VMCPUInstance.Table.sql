USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VMCPUInstance]    Script Date: 6/29/2019 5:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMCPUInstance](
	[CPU_ID] [bigint] NOT NULL,
	[VM_ID] [bigint] NOT NULL,
	[CPU_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [VMCPUInstance_PK] PRIMARY KEY CLUSTERED 
(
	[CPU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_453320563]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_453320563] ON [dbo].[VMCPUInstance]
(
	[VM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VMCPUInstance]  WITH CHECK ADD  CONSTRAINT [VMCPUInstance_FK1] FOREIGN KEY([VM_ID])
REFERENCES [dbo].[VMProperties] ([VM_ID])
GO
ALTER TABLE [dbo].[VMCPUInstance] CHECK CONSTRAINT [VMCPUInstance_FK1]
GO
