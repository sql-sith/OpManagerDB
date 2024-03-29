USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FortiGateFortiAnalyzer]    Script Date: 6/29/2019 5:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FortiGateFortiAnalyzer](
	[RESOURCEID] [bigint] NOT NULL,
	[BIOS] [varchar](150) NOT NULL,
	[RELEASE_VERSION] [varchar](150) NOT NULL,
	[FIPS_MODE] [varchar](150) NOT NULL,
 CONSTRAINT [FortiGateFortiAnalyzer_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__242423480]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__242423480] ON [dbo].[FortiGateFortiAnalyzer]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FortiGateFortiAnalyzer] ADD  DEFAULT ('Not Available') FOR [BIOS]
GO
ALTER TABLE [dbo].[FortiGateFortiAnalyzer] ADD  DEFAULT ('Not Available') FOR [RELEASE_VERSION]
GO
ALTER TABLE [dbo].[FortiGateFortiAnalyzer] ADD  DEFAULT ('Not Available') FOR [FIPS_MODE]
GO
ALTER TABLE [dbo].[FortiGateFortiAnalyzer]  WITH CHECK ADD  CONSTRAINT [FortiGateFortiAnalyzer_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[FortiGateFortiAnalyzer] CHECK CONSTRAINT [FortiGateFortiAnalyzer_FK1]
GO
