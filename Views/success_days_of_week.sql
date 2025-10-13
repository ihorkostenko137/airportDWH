/****** Object:  View [dtm].[Success_Days_Of_Week]    Script Date: 13.10.2025 12:58:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dtm].[Success_Days_Of_Week] as
select DATENAME(WeekDay, PurchaseDate) WeekPerDays, count(TicketID) CountOfTotalTicketSold, sum(Price*quantity) TotalMoney from zoo.zoo_Fact_Tickets
group by DATENAME(WeekDay, PurchaseDate)
/*order by 
    case 
        when DATENAME(WeekDay, PurchaseDate) = 'Monday' then 1
        when DATENAME(WeekDay, PurchaseDate) = 'Tuesday' then 2
        when DATENAME(WeekDay, PurchaseDate) = 'Wednesday' then 3
        when DATENAME(WeekDay, PurchaseDate) = 'Thursday' then 4
        when DATENAME(WeekDay, PurchaseDate) = 'Friday' then 5
        when DATENAME(WeekDay, PurchaseDate) = 'Saturday' then 6
        when DATENAME(WeekDay, PurchaseDate) = 'Sunday' then 7  
	end;*/
GO

