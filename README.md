## 👤 Autor

**Bruno Saraiva Maciel** -
Economista & Analista de Dados
* 💼 [LinkedIn](https://www.linkedin.com/in/bruno-s-maciel/)

# 📊 Análise de Performance e Logística - Olist E-commerce

## 📝 Sobre o Projeto
Este projeto analisa dados reais do e-commerce brasileiro (Dataset Olist) para identificar gargalos logísticos, padrões de sazonalidade e eficiência do catálogo de produtos.

O foco da análise é **estratégico**, visando responder:
* Como o custo do frete e o prazo impactam as vendas em diferentes estados (Logística)?
* Quais categorias de produtos geram receita mas destroem a reputação da marca (Qualidade)?
* Qual a tendência de crescimento e sazonalidade das vendas (Temporal)?

## 🛠️ Ferramentas & Estrutura
O projeto foi dividido em etapas técnicas, organizadas nas pastas deste repositório:

* **📁 [SQL](SQL/)**: Scripts de modelagem de dados, criação de Views e limpeza (ETL).
* **📁 [Power BI](arquivo%20BI/)**: Arquivo `.pbix` com o dashboard interativo e medidas DAX.
* **📁 [Imagens](Imagens/)**: Galeria de capturas de tela das análises.

---

## 🗄️ Estrutura do Projeto (SQL)

O core do projeto reside na manipulação eficiente dos dados. A pasta `SQL` contém dois scripts principais:

* **`etl_vendas_logistica.sql`**: Script de **ETL (Extract, Transform, Load)**. Utiliza *Common Table Expressions (CTEs)* para consolidar pedidos, itens, pagamentos e avaliações em uma visão analítica única, tratando nulos e criando regras de negócio (ex: cálculo de lead time e status de entrega).
* **`queries_analise_olist.sql`**: Consultas exploratórias utilizadas para validação dos dados e extração de insights rápidos diretamente do banco de dados.

---

## 📈 Galeria de Análises (Dashboard)

### 1. Visão Geral (Overview)
Raio-X financeiro com os principais KPIs: Receita Total, Ticket Médio e Volume de Vendas.
![Visão Geral](Imagens/Visão%20Geral.png)

### 2. Evolução Temporal
Análise de tendências de vendas para identificação de picos sazonais.
![Tendências](Imagens/Tendências.png)

### 3. Matriz de Produtos
Cruzamento entre **Volume de Vendas** e **Nota de Avaliação**. Identifica produtos "Best Sellers" com baixa qualidade.
![Produtos](Imagens/Produtos.png)

### 4. Eficiência Logística
Análise de correlação (Scatter Plot) entre **Frete Médio** e **Prazo de Entrega**.
* **Insight:** O gráfico demonstra o custo de oportunidade em estados do Norte/Nordeste, onde o frete elevado e prazos longos limitam a expansão.
![Logística](Imagens/Eficiência%20Logística.png)

---

## 🚀 Como Executar
1. Clone este repositório.
2. Os scripts de preparação dos dados estão na pasta `SQL`.
3. Para visualizar o dashboard interativo, faça o download do arquivo na pasta `arquivo BI` e abra com o **Microsoft Power BI Desktop**.

---
*Projeto desenvolvido para portfólio de Análise de Dados e Economia.*
