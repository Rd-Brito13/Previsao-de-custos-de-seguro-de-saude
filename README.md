# Projeto: Previsão de Custos de Seguro de Saúde

Este projeto aplica **Machine Learning** para prever o custo de seguros de saúde com base em variáveis demográficas e comportamentais.  
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

## Estrutura do projeto


Previsao-seguro-saude/

├─ data/

│ └─ raw/ <- insurance.csv

├─ notebooks/

│ └─ Regressor.ipynb <- Análise, tratamento e modelagem

├─ models/ <- LIGHTGBM.pkl, Random_Forest.pkl, XGBOOST.pkl

├─ requirements.txt <- Dependências do projeto

├─ Setup.bat <- Script para criar venv, instalar dependências e kernel Jupyter

└─ README.md <- Documentação do projeto



---

## Dataset

- **Fonte**: Kaggle - Medical Cost Personal Datasets  
- **Número de instâncias**: 1.338  
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
   - Separação de treino e teste antes do pré-processamento  

3. **Modelagem**  
   - Modelos testados:
     - Regressão Linear e Múltipla  
     - SVR  
     - Árvore de Decisão  
     - Random Forest  
     - XGBoost, LightGBM, CatBoost  
     - Rede Neural (`MLPRegressor`)  
   - Ajuste de hiperparâmetros com `GridSearchCV`  

4. **Validação**  
   - Cross-validation  
   - Métricas: **MAE, MSE, RMSE, R²**  

5. **Salvar modelos**  
   - Modelos finais salvos em `models/` (`LIGHTGBM.pkl`, `Random_Forest.pkl`, `XGBOOST.pkl`)  

6. **Simulação de deploy**  
   - Carregamento do modelo salvo e previsão de novos dados  

---

## Resultados

- Melhor modelo: **Random Forest (com escalonamento + encoding + criação de variaveis dummy)**  
- Principais métricas:
  - **R²**: 85.83%  
  - **MAE**: 2.415,70  
  - **RMSE**: 4.289,22  
  - Validação cruzada (R²): 85.35%  

---
## Como executar o projeto

## Obs:Para rodar no google colab, carregue o notebook e o dataset e ajuste o caminho se necessário.

## Utilizando o Jupyter (Opção 1)
1. Clone o repositório:

```bash
git clone https://github.com/Rd-Brito13/Previsao-de-custos-de-seguro-de-saude
cd Previsao-de-custos-de-seguro-de-saude


2. Execute o script Setup.bat (ele fará tudo: criar o venv na pasta do projeto, instalar dependências e registrar o kernel no jupyter)

3. Abra o notebok no jupyter e selecione o kernel criado:
Kernel -> change kernel -> Phyton (projeto)
