/****** Object:  Table [dsa].[airticket]    Script Date: 11.10.2025 16:02:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dsa].[airticket](
	[airticket_ID] [int] IDENTITY(1,1) NOT NULL,
	[customer_ID] [int] NOT NULL,
	[flight_ID] [int] NOT NULL,
	[airticket_baggage_type] [varchar](100) NULL,
	[airticket_type] [varchar](max) NULL,
	[airticket_seat] [varchar](3) NULL,
	[airticket_price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[airticket_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

