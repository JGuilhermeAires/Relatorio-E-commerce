SELECT
        *
FROM
        DIM_Customer

SELECT TOP 5
        City,
        COUNT(*) AS Qtd_Clientes_cidade
FROM
        DIM_Customer
GROUP BY
        City
ORDER BY
        Qtd_Clientes_cidade DESC
-- CIDADES DO SUL DOMINAM OS CLIENTES, ESPECIFICAMENTE CIDADES DE SANTA CATARINA

SELECT TOP 5
        State,
        COUNT(*) AS Qtd_Clientes
FROM
        DIM_Customer
GROUP BY
        State
ORDER BY
        Qtd_Clientes DESC;
-- OS ESTADOS DO SUL LIDERAM O NUMERO DE CLIENTES, SANTA CATARINA NO TOPO

SELECT
        Region,
        COUNT(*) AS Qtd_Clientes
FROM
        DIM_Customer
GROUP BY
        Region
ORDER BY
        Qtd_Clientes DESC;
-- HÁ MAIS CLIENTES NO SUL, TODAVIA, A DIFERENÇA É POUCA ENTRE AS OUTRAS REGIÕES. SUDESTE TEM UM BOM NÚMERO MAS É A REGIÃO COM MENOS CLIENTES, CENTRO OESTE NÃO HÁ CLIENTES

SELECT DISTINCT
        STATE
FROM
        DIM_Customer
        -- DF, GO, MT, MS SÃO OS ESTADOS QUE NÃO HÁ CLIENTES, OU SEJA, PRECISA INTENCIFICAR O MARKETING NA REGIÃO CENTRO-OESTE. 