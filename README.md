# DistremecV1

**DistremecV1** es una aplicación web desarrollada con **Spring Boot** que gestiona diferentes módulos de una empresa, incluyendo clientes, productos, proveedores, usuarios y facturación. Este proyecto está diseñado para facilitar la administración de datos y procesos internos de la empresa.

---

## Características Principales

- **Gestión de Clientes**: Registro, edición, eliminación y visualización de clientes.
- **Gestión de Productos**: Administración de inventarios y productos.
- **Gestión de Proveedores**: Control de proveedores y sus datos.
- **Facturación**: Generación de facturas de compra y venta.
- **Autenticación y Autorización**: Implementación de roles (ADMIN, USER) y seguridad con Spring Security.
- **Interfaz de Usuario**: Uso de Thymeleaf para plantillas HTML y Bootstrap para diseño responsivo.

---

## Estructura del Proyecto

El proyecto sigue la estructura estándar de Spring Boot:

```
src/
├── main/
│   ├── java/com/distrimec/web/
│   │   ├── controladores/       # Controladores para manejar las solicitudes HTTP
│   │   ├── modelos/             # Entidades y modelos de datos
│   │   ├── repositorios/        # Interfaces para acceso a la base de datos
│   │   ├── servicios/           # Lógica de negocio
│   │   └── config/              # Configuración de seguridad y beans
│   ├── resources/
│       ├── templates/           # Plantillas Thymeleaf
│       ├── static/              # Archivos estáticos (CSS, JS, imágenes)
│       └── application.properties # Configuración de la aplicación
└── test/                        # Pruebas unitarias
```

---

## Tecnologías Utilizadas

- **Backend**: Spring Boot, Spring Security, Spring Data JPA
- **Frontend**: Thymeleaf, Bootstrap
- **Base de Datos**: H2 (por defecto, puede configurarse para MySQL u otras)
- **Seguridad**: BCrypt para encriptación de contraseñas
- **Pruebas**: JUnit 5

---

## Requisitos Previos

- **Java 17** o superior
- **Maven** para la gestión de dependencias
- **IDE** como IntelliJ IDEA o VS Code

---

## Configuración e Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/jorscastro/DistremecV1-main.git
   cd DistremecV1-main
   ```

2. Configura la base de datos en el archivo `application.properties`:
   ```properties
   spring.datasource.url=jdbc:h2:mem:testdb
   spring.datasource.username=sa
   spring.datasource.password=
   spring.jpa.hibernate.ddl-auto=update
   ```

3. Ejecuta la aplicación:
   ```bash
   ./mvnw spring-boot:run
   ```

4. Accede a la aplicación en tu navegador:
   ```
   http://localhost:8080
   ```

---

## Módulos Principales

### 1. Clientes
- **URL**: `/clientes`
- Funcionalidades: Listar, crear, editar y eliminar clientes.

### 2. Productos
- **URL**: `/productos`
- Funcionalidades: Gestión de inventarios y productos.

### 3. Proveedores
- **URL**: `/proveedores`
- Funcionalidades: Registro y administración de proveedores.

### 4. Facturación
- **URL**: `/factura`
- Funcionalidades: Generación de facturas de compra y venta.

### 5. Usuarios
- **URL**: `/usuarios`
- Funcionalidades: Registro y gestión de usuarios con roles.

---

## Seguridad

El proyecto utiliza **Spring Security** para la autenticación y autorización. Los usuarios tienen roles asignados (`ADMIN`, `USER`) que determinan su acceso a diferentes partes de la aplicación.

---

## Contribuciones

1. Haz un fork del repositorio.
2. Crea una rama para tu funcionalidad:
   ```bash
   git checkout -b feature/nueva-funcionalidad
   ```
3. Realiza tus cambios y haz un commit:
   ```bash
   git commit -m "Agrega nueva funcionalidad"
   ```
4. Envía tus cambios:
   ```bash
   git push origin feature/nueva-funcionalidad
   ```
5. Abre un Pull Request.

---

## Licencia

Este proyecto está bajo la licencia **MIT**. Consulta el archivo `LICENSE` para más detalles.

---

## Contacto

Para más información o soporte, contacta a **Paola diaz** a través de https://droti.site/hv/#contacto.
