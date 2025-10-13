/****** Object:  View [dtm].[AveragePricePerProduct]    Script Date: 13.10.2025 12:57:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dtm].[AveragePricePerProduct] as
select  ProductID, avg(ItemPrice) PrumernaCena from dwh2.f_OrderItem
group by ProductID
GO

