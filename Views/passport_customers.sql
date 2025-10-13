/****** Object:  View [dbo].[Passport Customers]    Script Date: 13.10.2025 12:57:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Passport Customers] as
select * from dsa.customer
where customer_cardType = 'Passport';
GO

