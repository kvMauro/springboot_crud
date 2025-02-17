# CRUD de Empleados con Spring Boot y JSP

Este proyecto es un sistema básico de gestión de empleados que permite realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre una lista de empleados. Está desarrollado utilizando Spring Boot para el backend, JSP (JavaServer Pages) para la interfaz de usuario y MySQL como base de datos.

## Tecnologías Utilizadas

- **Spring Boot**: Framework de Java para desarrollar aplicaciones web y microservicios.
- **JSP (JavaServer Pages)**: Tecnología para crear páginas web dinámicas en Java.
- **Spring Data JPA**: Para la persistencia de datos y la interacción con la base de datos.
- **MySQL**: Base de datos relacional utilizada para almacenar los datos de los empleados.
- **Bootstrap**: Para el diseño y la estilización de la interfaz de usuario.

## Estructura del Proyecto

- **Modelo**: La clase `Empleado` representa la entidad empleado con sus atributos: `idEmpleado`, `nombre`, `departamento` y `sueldo`.
- **Repositorio**: La interfaz `EmpleadoRepositorio` extiende de `JpaRepository` para proporcionar métodos CRUD.
- **Servicio**: La clase `EmpleadoServicio` contiene la lógica de negocio y utiliza el repositorio para interactuar con la base de datos.
- **Controlador**: La clase `IndexControlador` maneja las solicitudes HTTP y coordina la interacción entre la vista y el servicio.
- **Vistas**: Las páginas JSP (`index.jsp`, `agregar.jsp`, `editar.jsp`) son las interfaces de usuario que permiten al usuario interactuar con el sistema.

## Requisitos Previos

- Java JDK 11 o superior.
- Maven 3.x.
- MySQL instalado y configurado.
- Un IDE como IntelliJ IDEA, Eclipse o VS Code.

## Configuración del Proyecto

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/crud-empleados-spring-boot.git
   cd crud-empleados-spring-boot
   ```
2. ***Configurar la base de datos MySQL***:
- Asegúrate de que MySQL esté instalado y en ejecución.
- Crea una base de datos llamada empleados_db (o déjala que se cree automáticamente con la opción createDatabaseIfNotExist=true).
- Configura las credenciales de la base de datos en el archivo application.properties:
```bash
# Conexión MySQL
spring.datasource.url=jdbc:mysql://localhost:3306/empleados_db?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=admin
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# Configuración para JSP
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp
server.servlet.context-path=/
spring.main.banner-mode=off
```

3. ***Compilar y ejecutar la aplicación***:
```bash
mvn clean install
mvn spring-boot:run
```

4. ***Acceder a la aplicación***:
Abre tu navegador y visita http://localhost:8080/.

## Uso de la Aplicación

- Listar Empleados: Al acceder a la raíz (/), se muestra una lista de todos los empleados registrados.
![1](https://github.com/user-attachments/assets/3c36dd11-472e-416e-a481-795e56313450)

- Agregar Empleado: Haz clic en el botón "Agregar Empleado" y completa el formulario para agregar un nuevo empleado.
![2](https://github.com/user-attachments/assets/38e487c9-9002-42e9-8003-19994158739e)


- Editar Empleado: Haz clic en el botón "Editar" junto a un empleado para modificar sus detalles.
![3](https://github.com/user-attachments/assets/05bc348f-ca08-4e24-9356-0bd1a5ad3ec6)


- Eliminar Empleado: Haz clic en el botón "Eliminar" junto a un empleado para eliminarlo de la lista.

## Modelo de Datos
```bash
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Empleado {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer idEmpleado;
    String nombre;
    String departamento;
    Double sueldo;
}
```
