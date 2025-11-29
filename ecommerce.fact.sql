SELECT
        *
FROM
        FACT_Orders
SELECT
        Purchase_Status,
        COUNT(*) AS Qtd_Pedidos
FROM
        FACT_Orders
GROUP BY
        Purchase_Status
ORDER BY
        Qtd_Pedidos DESC;
-- Status processando na frente, isso pode indicar alguns problemas como : Lentidão na atualização de pedidos, cancelados também tem um número alto, isso pode ser ligado a desistencia, devido a atrasos de entrega, ou até pela lentidão apresentado no status processando
SELECT
        AVG(Total) AS Ticket_Medio
FROM
        FACT_Orders;
-- Em geral a empresa recebe um alto valor por compra
-- Receita total, subtotal e ticket médio
SELECT
        SUM(Total)    AS Receita_Total ,
        SUM(Subtotal) AS Subtotal_Total,
        AVG(Total)    AS Ticket_Medio
FROM
        FACT_Orders;
SELECT
        AVG(Discount) AS Desconto_Medio
FROM
        FACT_Orders;
-- Desconto médio de 6.78%, a empresa segue um bom fluxo de receitas. Não precisa aplicar altos descontos para vendas
SELECT
        Payment                                 ,
        COUNT(*)                  AS Qtd_Pedidos,
        SUM(
                CASE
                WHEN
                        Purchase_Status='Confirmado'
                THEN
                        1
                ELSE
                        0
                END)*1.0/COUNT(*) AS Taxa_Confirmado
FROM
        FACT_Orders
GROUP BY
        Payment;
-- A forma de pagamento preferida é em pix, devido sua facilidade
SELECT
        MONTH(Order_Date) AS Mes        ,
        COUNT(*)          AS Qtd_Pedidos,
        SUM(Total)        AS Receita
FROM
        FACT_Orders
GROUP BY
        MONTH(Order_Date)
ORDER BY
        Mes;
-- O Mês de Março assume a maior quantidade de pedidos e maior receita