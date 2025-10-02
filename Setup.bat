@echo off
echo ==== Setup do Projeto ====

REM Caminho do ambiente virtual
set VENV_DIR=venv

REM 1. Checar se o venv existe
if not exist %VENV_DIR% (
    echo Ambiente virtual nao encontrado. Criando agora...
    python -m venv %VENV_DIR%
) else (
    echo Ambiente virtual encontrado. Continuando setup...
)

REM 2. Ativar o ambiente virtual
echo ==== Ativando ambiente virtual ====
call %VENV_DIR%\Scripts\activate

REM 3. Instalar dependencias
echo ==== Instalando dependencias ====
pip install --upgrade pip
pip install -r requirements\requirements.txt

REM 4. Instalar kernel no Jupyter
echo ==== Instalando kernel no Jupyter ====
pip install ipykernel
python -m ipykernel install --user --name=projeto --display-name "Python (Projeto)"

REM 5. Confirmar sucesso
echo ==== Setup concluido com sucesso! 🚀 ====
pause
