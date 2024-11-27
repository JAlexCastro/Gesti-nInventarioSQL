# 📊 Gestión de Inventario con Principios ACID en PostgreSQL  

Este proyecto implementa una base de datos relacional en PostgreSQL para gestionar el inventario de una tienda de comercio electrónico, garantizando los principios **ACID** (Atomicidad, Consistencia, Aislamiento y Durabilidad). Es ideal para poner en practica los aprendido en el curso de Administracion de base de datos en Postgres, ademas de aplicar las buenas prácticas en el diseño de bases de datos orientadas a transacciones seguras y eficientes.

---

## **📌 Características Principales**  

- **Atomicidad:** Uso de transacciones y triggers que garantizan que las operaciones se ejecuten completamente o no se realicen.  
- **Consistencia:** Validación de datos mediante restricciones, funciones y triggers que mantienen la integridad de los datos.  
- **Aislamiento:** Implementación de índices y el uso de `SELECT FOR UPDATE` para evitar conflictos en transacciones concurrentes.  
- **Durabilidad:** Manejo de transacciones que aseguran la persistencia de los datos incluso ante fallos del sistema.  

---

## **🛠 Estructura del Proyecto**  

El proyecto incluye:  
1. **Esquema de la Base de Datos:** Tablas con relaciones bien definidas y restricciones para asegurar la integridad de los datos.  
2. **Funciones y Triggers:** Automatización de cálculos y validaciones para garantizar consistencia.  
3. **Índices y Vistas:** Optimización del rendimiento en consultas frecuentes.  
4. **Ejemplo Práctico:** Un script SQL que simula movimientos de stock utilizando transacciones seguras.  

---

## **📂 Archivos del Proyecto**  

- **`schema.sql`:** Script para crear el esquema de la base de datos, incluidas las tablas y restricciones.  
- **`functions.sql`:** Definición de las funciones utilizadas en el sistema.  
- **`roles.sql`:** Definicion de los roles para restringir el sistema.  
- **`triggers.sql`:** Creación de triggers para manejar la atomicidad y consistencia.  
- **`indexes.sql`:** Definición de índices para optimizar consultas.  
- **`views.sql`:** Definición de vistas para simplificar el acceso a los datos.  
- **`example_transaction.sql`:** Ejemplo de transacción para registrar movimientos de stock.  

---

## **🚀 Requisitos Previos**  

1. Tener instalado **PostgreSQL** (versión 13 o superior).  
2. Un cliente SQL (por ejemplo, pgAdmin o la terminal de PostgreSQL).  
3. Clonar o descargar este repositorio en tu máquina local:  
   ```bash
   git clone https://github.com/JAlexCastro/Gesti-nInventarioSQL.git
   ```  

---

## **⚙️ Instalación y Uso**  

1. **Crear la base de datos:**  
   Crea una nueva base de datos en PostgreSQL:  
   ```sql
   CREATE DATABASE gestion_inventario;
   ```

2. **Ejecutar los scripts:**  
   Importa los archivos en el siguiente orden para configurar el sistema:  
   ```bash
   psql -d gestion_inventario -f schema.sql
   psql -d gestion_inventario -f functions.sql
   psql -d gestion_inventario -f roles.sql
   psql -d gestion_inventario -f triggers.sql
   psql -d gestion_inventario -f indexes.sql
   psql -d gestion_inventario -f views.sql
   ```

3. **Ejecutar el ejemplo práctico:**  
   Ejecuta el script `example_transaction.sql` para probar el funcionamiento del sistema.  

---

## **📊 Ejemplo de Uso**  

1. Registrar un movimiento de entrada:  
   ```sql
   INSERT INTO movimientos_stock (id_producto, id_almacen, tipo_movimiento, cantidad)
   VALUES (1, 2, 'entrada', 10);
   ```

2. Verificar el stock actualizado:  
   ```sql
   SELECT stock_actual FROM productos WHERE id_producto = 1;
   ```

---

## **📬 Contacto**  

Si tienes preguntas o comentarios, no dudes en contactarme:  

- **LinkedIn:** [Perfil](https://linkedin.com/in/alejandro-castro-a173a0221)  
- **GitHub:** [Usuario](https://github.com/JAlexCastro)  
 
