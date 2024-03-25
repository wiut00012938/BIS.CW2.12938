SELECT 
    DD_OrderID AS Transaction_ID,
    STRING_AGG(CAST(FK_Product AS VARCHAR(10)), ',') AS Itemset
FROM 
    SalesFact
GROUP BY 
    DD_OrderID;
