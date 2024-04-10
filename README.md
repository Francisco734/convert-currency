# convert-currency

Prueba técnica ClickBus.

## Requerimientos
- Docker 20.0.2
- Docker Compose 2.19.1

### Tecnologías implementadas y versiones
- Docker 20.0.2
- PHP 8.3.4
- Laravel Framework 11.0
- Frankenphp
- MySQL 5.7
- Node 17.0.1
- NPM 8.1.0
- Angula CLI 14.2.5

## Instalación

El proyecto esta dividido en tres repositorios. Un repositorio central, repositoro para el backend y respositorio para el frontend.

1. Clonar el repositorio central.

```bash
git clone https://github.com/Francisco734/convert-currency.git
```

2. Dirigirse a la carpeta "convert-currency/backend"

```bash
cd convert-currency/backend
```

3. Clonar el repositorio backend

```bash
git clone https://github.com/Francisco734/convert-currency-api.git
```

4. Dirigirse a la carpeta "convert-currency/frontend"

```bash
cd ../frontend
```

5. Clonar repositorio frontend

```bash
git clone https://github.com/Francisco734/convert-currency-app.git
```

6. Dirigirse a la carpeta "convert-currency"

```bash
cd ..
```

Una vez clonados los tres repositorios se tendra la siguiente estructura de carpetas.

```
convert-currency
├── backend
│   ├── convert-currency-api
│   ├── Dockerfile
├── frankenphp
│   ├── Dockerfile
├── frontend
│   ├── convert-currency-app
│   ├── Dockerfile
├── mysql
│   ├── Dockerfile
│   ├── initdb.sql
├── .gitignore
├── docker-compose.yml
└── README.md
```

7. Ejecutar contenedores

```bash
docker-compose up -d --build
```

---
 *Elaboró: Francisco Sánchez Estrada*
