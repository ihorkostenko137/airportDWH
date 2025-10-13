/****** Object:  View [dbo].[Customer's airtickets]    Script Date: 13.10.2025 12:57:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Customer's airtickets] as
select customer_name, airticket_price from dsa.customer dsa_customer
join dsa.airticket dsa_airticket on dsa_customer.customer_ID = dsa_airticket.customer_ID
GO

