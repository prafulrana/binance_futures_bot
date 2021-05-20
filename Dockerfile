FROM python:3.8 

WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt && \
    python -m pip install git+https://github.com/Binance-docs/Binance_Futures_python.git
CMD ["python", "bot.py"]
