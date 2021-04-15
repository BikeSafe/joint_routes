# BikeSafe - Rutas conjuntas

Microservicio encargado de las rutas conjuntas.

## Correr contenedor

1. Generar imagen

  ```bash
  docker-compose build
  ```

2. Crear Contenedor

  ```bash
  docker-compose up
  ```
## Requests de prueba

En la ruta `requests/v1/` está el script `route.sh`, este genera request de prueba. Para ejecutarlo, siga estos pasos:

1. Dele permisos al script

  ```bash
  chmod +x route.sh
  ```
2. Ejecútelo y elija una petición

  ```bash
  ./route.sh [OPTION] [:id]
  ```

  Las opciones disponibles son:

  - PUT
  - GET
  - GET :id
  - PUT :id
  - DELETE :id

## Posibles errores

- A server is already running. Check /app/tmp/pids/server.pid

  **Solución:**

  ```bash
  rm tmp/pids/server.pid
  ```
