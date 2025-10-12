/****** Object:  Table [dwh].[d_customer]    Script Date: 11.10.2025 16:22:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dwh].[d_customer](
	[d_customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[d_customer_name] [varchar](100) NULL,
	[d_customer_nationality] [varchar](100) NULL,
	[d_customer_cardType] [varchar](max) NULL,
	[d_customer_cardNumber] [varchar](max) NULL,
	[d_customerr_expiryDate] [date] NULL,
	[d_customer_birthday] [date] NULL,
	[d_customer_valid_from] [datetime] NULL,
	[d_customer_valid_to] [datetime] NULL,
	[d_customer_is_current] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[d_customer_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

