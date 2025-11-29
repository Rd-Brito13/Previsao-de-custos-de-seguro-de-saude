# Projeto: Previsão de Custos de Seguro de Saúde
Modelagem, avaliaçãoo e comparação de algortimos de Machine Learning para regressão.


Este projeto aplica  técnicas avançadas de **Machine Learning** para prever o custo de seguros de saúde a partir de variáveis clínicas, demográficas e comportamentais.  
O dataset é público e está disponível no kaggle:
[Medical Cost Personal Datasets](https://www.kaggle.com/datasets/mirichoi0218/insurance)

---

## Resumo do Projeto

- Análise exploratória completa (EDA)
- Tratamento de dados e feature engineering
- Pré-processamento com pipelines
- Teste de múltiplos algoritmos de regressão
- Otimização RandomSearchCV
- Avaliação de diversas métricas (MAE, RMSE, R²)
- Comparação geral + Ranking de modelos
- Salvamento de modelos finanis em .pkl
- Simulação de deploy com entrada de dados do usuário

---

## Estrutura do projeto


Previsao-seguro-saude/

├─ data/

│ └─ raw/ 

│  └─ insurance.csv

├─ models/ 
    ├─  LIGHTGBM.pkl
    ├─  Random_Forest.pkl
    └─  XGBOOST.pkl

├─ notebooks/

│ └─ Regressor.ipynb


├─ requirements/

│ └─  requirements.txt

├─ Setup.bat 

├─ .gitignore

└─ README.md <- Documentação do projeto



---

## Dataset

- **Fonte**: Kaggle - Medical Cost Personal Datasets  
- **Número de instâncias**: 1.338  
- **Número de features**: 7 (6 independentes)
  - age,sex,bmi,children, smoker, region   
- **Target**:  
  - `charges` (valor do seguro)  

---

## Pipeline do projeto

1. **Importação dos dados**  
   - Carregamento e inspeção inicial do arquivo insurance.csv

2. **Análise e tratamento**  
   - Estatíscas gerais
   - Identificação de outliers
   - Estudo de correlações
   - Tratamento e encoding das variáveis cetegóricas
   - Escalonamento de variáveis numéricas
   - Divisão entre treino e teste antes do pré-processamento 

3. **Modelagem**  
   - Regressão Linear e Múltipla
   - SVR (Support vector regressor)
   - Decision Tree
   - Random Forest
   - XGBoost
   - LightGBM
   - CatBoost
   - MLPRegressor (rede neural)    

4. **Avaliação**  
   - MAE
   - RMSE
   - R²
   - Validação cruzada (k-fold)
   - Análise de resíduos e heterocedasticidade
   - Comparação entre modelo via DataFrame Final

5. **Salvamento dos modelos finais**  
   - Todos os pipeline completo (pré-processamento + modelo) usando joblib.dump()

6. **Simulação de deploy**  
   - Mini-sistema interativo para testar previsões com entrada manual do usuário 

---

## Resultados

Melhor modelo:
- **Random Forest (com escalonamento + encoding + criação de variaveis dummy)**  
Principais métricas:
  - Melhor R² de teste entre todos os modelos  
  - Menor RMSE geral 
  - Resíduos com médio próximo de zero
  - Boa estabilidade na validação cruzada
  - Alta consistência na distribuição dos resíduos
 Principais métricas (Random Forest)
- R² (treino): 87.77%
- R² (Teste): 85.93%
- MAE: 2.438,29
- RMSE: 4.274,68
- Validação cruzada (R²): 85.46%
- Média dos resíduos: -52.56

---
## Como executar o projeto


## Utilizando o Jupyter + ambiente virtual
1. Clone o repositório:

```bash
git clone https://github.com/Rd-Brito13/Previsao-de-custos-de-seguro-de-saude
cd Previsao-de-custos-de-seguro-de-saude
```

2. Execute o script de setup:
 ```bash
 Setup.bat
 ```
3. Abrir o Jupyter Notebook:
```bash
Kernel -> Change Kernel -> Projeto (Custo Seguro-)
```

Tecnologias utilzadas
- Python
- Numpy
- Pandas
- Scikit-learn
- XGBoost
- LightGBM
- CatBoost
- Maatplotlib / Seaborn / Plotly
- Joblib
- Jupyter Notebook


## 👨‍💻 Autor

**Rodrigo Brito**  
📧 [rd.brito13@gmail.com](mailto:rd.brito13@gmail.com)  
💼 [LinkedIn](https://www.linkedin.com/in/rd-brito13)

---

⭐ **Se este projeto foi útil, não esqueça de deixar uma estrela no repositório!**
