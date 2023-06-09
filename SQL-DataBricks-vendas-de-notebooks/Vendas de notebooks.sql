-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC
-- MAGIC **Quais fatores afetam os preços dos computadores portáteis?**
-- MAGIC
-- MAGIC * Vários fatores diferentes podem afetar os preços dos laptops. Esses fatores incluem a marca do computador e o número de opções e complementos incluídos no pacote do computador. Além disso, a quantidade de memória e a velocidade do processador também podem afetar o preço. Embora menos comum, alguns consumidores gastam dinheiro adicional para comprar um computador com base na “aparência” geral e no design do sistema.
-- MAGIC
-- MAGIC * Em muitos casos, os computadores de marca são mais caros do que as versões genéricas. Esse aumento de preço geralmente tem mais a ver com o reconhecimento do nome do que com qualquer superioridade real do produto. Uma grande diferença entre os sistemas de marca e genéricos é que, na maioria dos casos, os computadores de marca oferecem melhores garantias do que as versões genéricas. Ter a opção de devolver um computador com defeito costuma ser um incentivo suficiente para encorajar muitos consumidores a gastar mais dinheiro.
-- MAGIC
-- MAGIC * A funcionalidade é um fator importante na determinação dos preços dos laptops. Um computador com mais memória geralmente funciona melhor por mais tempo do que um computador com menos memória. Além disso, o espaço no disco rígido também é crucial, e o tamanho do disco rígido geralmente afeta os preços. Muitos consumidores também podem procurar drivers de vídeo digital e outros tipos de dispositivos de gravação que possam afetar os preços dos laptops.
-- MAGIC
-- MAGIC * A maioria dos computadores vem com algum software pré-instalado. Na maioria dos casos, quanto mais software for instalado em um computador, mais caro ele será. Isso é especialmente verdadeiro se os programas instalados forem de editores de software bem estabelecidos e reconhecíveis. Aqueles que estão pensando em comprar um novo laptop devem estar cientes de que muitos dos programas pré-instalados podem ser apenas versões de teste e expirarão dentro de um determinado período de tempo. Para manter os programas, será necessário adquirir um código e, em seguida, fazer o download de uma versão permanente do software.
-- MAGIC
-- MAGIC -Muitos consumidores que estão comprando um novo computador estão comprando um pacote completo. Além do próprio computador, esses sistemas normalmente incluem um monitor, teclado e mouse. Alguns pacotes podem até incluir uma impressora ou câmera digital. O número de extras incluídos em um pacote de computador geralmente afeta os preços dos laptops.
-- MAGIC
-- MAGIC * Alguns líderes da indústria de fabricação de computadores tornam um ponto de venda oferecer computadores em estilo elegante e em uma variedade de cores. Eles também podem oferecer um design de sistema incomum ou contemporâneo. Embora isso seja menos importante para muitos consumidores, para aqueles que valorizam a “aparência”, esse tipo de sistema pode valer o custo extra.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC **De onde foi retirado esses dados?**
-- MAGIC
-- MAGIC * Extraiu esses dados de flipkart.com
-- MAGIC
-- MAGIC * Usado uma ferramenta automatizada de extensão da Web do Chrome chamada Instant Data Scrapper
-- MAGIC     * recomendo que você use esta bela ferramenta para obter os dados de qualquer lugar na web, é muito fácil de usar, nenhum conhecimento de codificação é necessário.
-- MAGIC     
-- MAGIC **O que você pode fazer?**
-- MAGIC * Visualize esses dados e prepare gráficos de alta qualidade o máximo que puder.
-- MAGIC
-- MAGIC * Construir um modelo para prever o preço
-- MAGIC
-- MAGIC * Descrição das colunas: consulte a seção de colunas de dados.

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC
-- MAGIC alter view vw_vendas_notebooks
-- MAGIC as
-- MAGIC select *,
-- MAGIC (preco_atual * 0.063) as preco_atual_real ,
-- MAGIC (preco_anterior * 0.063) as preco_anterior_real,
-- MAGIC (desconto/100) as descont
-- MAGIC from vendas_notebooks

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC select * from vw_vendas_notebooks

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC select
-- MAGIC
-- MAGIC case when marca = 'lenovo' then 'Lenovo' 
-- MAGIC      else marca 
-- MAGIC end as marca_ajustada ,
-- MAGIC avg(preco_atual_real) as media_preco_atual
-- MAGIC from vw_vendas_notebooks
-- MAGIC group by 
-- MAGIC case when marca = 'lenovo' then 'Lenovo' 
-- MAGIC      else marca 
-- MAGIC end
-- MAGIC order by 2 desc

-- COMMAND ----------

select

case when tipo_memoria = 'LPDDR3' then 'DDR3'
     when tipo_memoria in('LPDDR4','LPDDR4X')  then 'DDR4'
else tipo_memoria end as tipo_memoria_ajustado,
sum(preco_atual_real) as soma_preco_atual
from vw_vendas_notebooks
group by 

case when tipo_memoria = 'LPDDR3' then 'DDR3'
     when tipo_memoria in('LPDDR4','LPDDR4X')  then 'DDR4'
else tipo_memoria end

order by 2 desc

-- COMMAND ----------


