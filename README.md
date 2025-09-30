# Projeto: Previsão de Custos de Seguro de Saúde

Este projeto aplica Machine Learning (Regressão Linear e Regressão Múltipla) para prever o custo de seguros de saúde com base em variáveis demográficas e comportamentais.  
O dataset utilizado é público e está disponível no Kaggle: [Medical Cost Personal Datasets](https://www.kaggle.com/datasets/mirichoi0218/insurance)

---

## Objetivo do projeto

Desenvolver modelos preditivos capazes de estimar o valor do seguro de saúde a partir de informações como:

- Idade  
- Sexo  
- Índice de Massa Corporal (IMC)  
- Número de filhos  
- Hábito de fumar  
- Região de residência  

---


Previsao-seguro-saude/
├─ data/

│ └─ raw/ <- insurance.csv

├─ notebooks/

│ └─ Regressor.ipynb <- Análise, tratamento e modelagem

├─ models/ <- LIGHTGBM.pkl, Random_Forest.pkl, XGBOOST.pkl

├─ requirements.txt <- Dependências do projeto

└─ README.md <- Documentação do projeto



---

## Dataset

- **Fonte**: Kaggle - Medical Cost Personal Datasets  
- **Número de instâncias**: 1338  
- **Número de features**: 7 (6 independentes + 1 target)  
- **Target**:  
  - `charges` (valor do seguro de saúde)  

---

## Pipeline do projeto

1. **Importação dos dados**  
   - Carregamento do dataset (`insurance.csv`)  

2. **Exploração e tratamento dos dados**  
   - Análise exploratória (distribuição, outliers, correlações, valores ausentes, gráficos)  
   - Encoding de variáveis categóricas (`OneHotEncoder`, `OrdinalEncoder`)  
   - Escalonamento de variáveis numéricas  
   - Separação de treino e teste antes do pré-processamento (evitar vazamento de dados)  

3. **Modelagem**  
   - Modelos testados:
     - Regressão Linear  
     - Regressão Múltipla  
     - Regressão com Vetores de Suporte (SVR)  
     - Árvore de Decisão  
     - Random Forest  
     - XGBoost, LightGBM, CatBoost  
     - Rede Neural (`MLPRegressor`)  
   - Ajuste de hiperparâmetros com `GridSearchCV`  

4. **Validação**  
   - Cross-validation para melhor estimativa de performance  
   - Métricas de avaliação: **MAE, MSE, RMSE, R² (Coeficiente de Determinação)**  

5. **Salvar modelos**  
   - Modelos finais salvos em `models/` (`LIGHTGBM.pkl`, `Random_Forest.pkl`, `XGBOOST.pkl`)  

6. **Simulação de deploy**  
   - Carregamento do modelo salvo e previsão de novos dados  

---

## Resultados

- Melhor modelo: **Random Forest (com escalonamento + encoding)**  
- Principais métricas:
  - **R²**: 85.83%  
  - **MAE**: 2415.70  
  - **RMSE**: 4289.22  
  - **Validação cruzada (R²)**: 85.35%  

---


## Como executar o projeto

1. Clone este repositório:

```bash
git clone https://github.com/Rd-Brito13/Previsao-de-custos-de-seguro-de-saude
cd Previsao-de-custos-de-seguro-de-saude

2. instale as dependências:
pip install -r requirements.txt

3. Execute o notebook
-Abra o notebook notebooks/Classificador.ipynb no Jupyter Notebook ou Google Colab
