SELECT * FROM sales;
INSERT INTO Sales (sale_id, storename, productname, quantity, price) VALUES
    (1, 'Store A', 'Product X', 10, 25.00),
    (2, 'Store B', 'Product Y', 5, 15.50),
    (3, 'Store A', 'Product Z', 8, 30.00),
    (4, 'Store C', 'Product X', 12, 22.50),
    (5, 'Store B', 'Product Z', 6, 35.00),
    (6, 'Store A', 'Product Y', 15, 18.75),
    (7, 'Store C', 'Product Y', 7, 20.00),
    (8, 'Store B', 'Product X', 9, 28.50),
    (9, 'Store C', 'Product Z', 10, 32.50),
    (10, 'Store A', 'Product X', 14, 24.00);
    
    select * from (select storename,sum(price)  as total_sale from Sales group by storename) as sale_shop join 
    (select avg(total_sale) as avg_tot from(select storename,sum(price)  
    as total_sale from Sales group by storename) as X) as overall_sales
    on sale_shop.total_sale < overall_sales.avg_tot ;
