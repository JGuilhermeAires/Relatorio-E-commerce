SELECT
        *
FROM
        DIM_Shopping
SELECT TOP 5 Product,
        SUM(Quantity) AS Total_Vendido
FROM
        DIM_Shopping
GROUP BY
        Product
ORDER BY
        Total_Vendido DESC;
-- Fone de ouvido Sem Fio QCY T27 é o produto mais vendido com 287 vendas, o segundo também é um fone, totalizando 571 vendas de fones. Levando a ser um produto potencial a investir
SELECT TOP 5
        s.Product,
        SUM(s.Quantity * s.Price) AS Receita_Total
FROM
        DIM_Shopping s
GROUP BY
        s.Product
ORDER BY
        Receita_Total DESC;
-- Projetor EPSON Powerlite Wide Screen assume a maior receita total, e está entre os 5 produtos mais vendidos