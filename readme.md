## 1. Instalación y Ejecución
### Paso 1
Instala la versión de python a trabajar dentro del proyecto
```
virtualenv -p python3.8 venv
```


### Paso 2
Activa el entorno virtual de python con la versión previamente descargada
```
source ./venv/bin/activate
```


### Paso 3
Instala las dependencias deberas ejecutar el siguiente comando desde la raíz del proyecto
```
pip install -r app/requirements.txt
```


### Paso 4
Ejecutar el proyecto deberas ejecutar lo siguiente desde la raíz del proyecto
```
uvicorn app.main:app --reload
```


### Paso 5
Compilar el archivo para AWS Lambda ejecutar el siguiente bash desde la raíz del proyecto
```
bash package_api.bash
```


## 2. Consumir API
Por ejemplo:
- Para obtener el precio de las crypto, en este caso ETH deberas consumir la API de la siguiente forma:
[http://localhost:8000/v1/prices/ETH](http://localhost:8000/v1/prices/ETH)

- Para obtener la tendencia del mercado de cada crypto, en este caso ETH deberas consumir la API de la siguiente forma:
[http://localhost:8000/v1/prtradingices/ETH](http://localhost:8000/v1/trading/ETH)

## 3. Referencias
Proyecto realizado en base a los siguientes tutoriales y proyecto GitHub

- [Tutorial by Anna Geller](https://towardsdatascience.com/fastapi-aws-robust-api-part-1-f67ae47390f9)
- [Tutorial by Sean Baier](https://www.deadbear.io/simple-serverless-fastapi-with-aws-lambda/)
- [GitHub Anna Geller](https://github.com/anna-anisienia/cryptoAPI)
- [Docs Mangum](https://mangum.io/)
- [Docs FastAPI](https://fastapi.tiangolo.com/)
- [API Gateway docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-rest-api.html)
- [Amazon API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-set-up-simple-proxy.html)
- [API by CryptoCompare](https://min-api.cryptocompare.com/documentation?key=Price&cat=SingleSymbolPriceEndpoint)