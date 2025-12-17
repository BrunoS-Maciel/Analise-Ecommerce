/*
   PROJETO OLIST E-COMMERCE
   Script de Consulta e Modelagem de Dados
   Autor: [Seu Nome]
   Objetivo: Unificar tabelas de pedidos e produtos para análise
*/

-- 1. Consulta para análise de Vendas e Logística
-- Unindo Pedidos com Itens e calculando prazos
SELECT 
    o.order_id,
    o.customer_id,
    o.order_status,
    o.order_purchase_timestamp AS data_compra,
    o.order_delivered_customer_date AS data_entrega,
    -- Cálculo de dias para entrega (Logística)
    DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp) AS dias_entrega,
    i.product_id,
    i.price AS valor_venda,
    i.freight_value AS valor_frete,
    c.customer_state AS estado_cliente
FROM 
    olist_orders_dataset o
JOIN 
    olist_order_items_dataset i ON o.order_id = i.order_id
JOIN 
    olist_customers_dataset c ON o.customer_id = c.customer_id
WHERE 
    o.order_status = 'delivered';


-- 2. Consulta para Dimensão de Produtos
-- Traduzindo categorias e padronizando nomes
SELECT 
    p.product_id,
    -- Tratamento de texto para categoria
    REPLACE(p.product_category_name, '_', ' ') AS categoria_produto,
    p.product_weight_g AS peso_g,
    p.product_length_cm AS comprimento_cm
FROM 
    olist_products_dataset p
WHERE 
    p.product_category_name IS NOT NULL;