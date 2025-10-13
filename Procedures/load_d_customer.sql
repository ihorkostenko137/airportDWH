/****** Object:  StoredProcedure [dbo].[load_d_customer]    Script Date: 13.10.2025 12:37:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   procedure [dbo].[load_d_customer] 
as 


insert into dwh.d_customer(d_customer_name, d_customer_nationality, d_customer_cardType, d_customer_cardNumber, d_customerr_expiryDate, d_customer_birthday,d_customer_valid_from, d_customer_is_current)
SELECT  
customer_name, customer_nationality, customer_cardType, customer_cardNumber, customer_expiryDate, customer_birthday,
GETDATE() d_customer_valid_from, 1 d_customer_is_current
FROM dsa.customer dsat
LEFT JOIN dwh.d_customer dwhc on dsat.customer_name = dwhc.d_customer_name and  dsat.customer_birthday = dwhc.d_customer_birthday
WHERE dwhc.d_customer_ID is NULL; -- Наполняю новую таблицу с добавленными новыми столбцами с таблицы dsa в  dwh точего у нас не было
;
SELECT customer_ID, customer_name, customer_birthday 
INTO #temp 
FROM dsa.customer dsac
INNER JOIN dwh.d_customer dwhc on dwhc.d_customer_name = dsac.customer_name
WHERE (dsac.customer_cardType != dwhc.d_customer_cardType or dsac.customer_cardNumber != dwhc.d_customer_cardNumber) and dwhc.d_customer_is_current = 1;
;
UPDATE dwh.d_customer
SET d_customer_is_current = 0, d_customer_valid_to = GETDATE() -- меняю платность на неплатность и меняю дату что оно уже не платное
WHERE d_customer_name  in (SELECT customer_name from  #temp)
;
insert into dwh.d_customer(d_customer_name, d_customer_nationality, d_customer_cardType, d_customer_cardNumber, d_customerr_expiryDate, d_customer_birthday,d_customer_valid_from, d_customer_is_current)
SELECT  
temp.customer_name, customer_nationality, customer_cardType, customer_cardNumber, customer_expiryDate, temp.customer_birthday,
GETDATE() d_customer_valid_from, 1 d_customer_is_current
FROM dsa.customer dsac
JOIN #temp temp on dsac.customer_ID = temp.customer_ID ;

DROP table #temp 

GO

