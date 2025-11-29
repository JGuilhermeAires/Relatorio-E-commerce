SELECT
        *
FROM
        DIM_Delivery
SELECT DISTINCT
        Services AS TIPO_SERVICO,
        P_Sevice AS PRECO_SERVIÇO
FROM
        DIM_Delivery
-- O Serviço Same Day é o mais caro
SELECT
        Status   AS Status_de_Entrega,
        COUNT(*) AS quantidade
FROM
        DIM_Delivery
GROUP BY
        Status
ORDER BY
        quantidade DESC;
-- Grande parte dos pedidos foram entregues, todavia o número de atrasos é alarmante, precica observar o motivo dos atrasos, para evitar a desconfiança ou perda de clientes
SELECT
        Services,
        COUNT(*) AS Qtd_Pedidos
FROM
        DIM_Delivery
GROUP BY
        Services
ORDER BY
        Qtd_Pedidos DESC;
-- Nos tipos entrega, a entrega normal Standard lidera a quantidade de pedidos. Enquanto a no mesmo dia está com menos pedidos na listagem. Deve ser por ser o serviço mais caro
SELECT
        Services,
        Status  ,
        COUNT(*) AS Qtd
FROM
        DIM_Delivery
GROUP BY
        Services,
        Status
ORDER BY
        Services,
        Qtd DESC;
-- Um ponto alarmente observado na consulta, é que o tipo de entrega same day, possui uma grande quantidade de atrasos.