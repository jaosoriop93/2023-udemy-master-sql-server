<a name="top"></a>
# Máster en SQL Server: Desde Cero a Nivel Profesional 2023

- [Máster en SQL Server: Desde Cero a Nivel Profesional 2023](#máster-en-sql-server-desde-cero-a-nivel-profesional-2023)
  - [1. Configuración](#1-configuración)
    - [Instalación de SQL Server](#instalación-de-sql-server)
    - [Verificar la correta instalación de SQL Server](#verificar-la-correta-instalación-de-sql-server)
    - [Instalación de SQL Server Management Studio (SSMS)](#instalación-de-sql-server-management-studio-ssms)
    - [Conexión al motor SQL](#conexión-al-motor-sql)
    - [Conociendo Microsoft SQL Management Studio](#conociendo-microsoft-sql-management-studio)
    - [Atajos de teclado más utilizados](#atajos-de-teclado-más-utilizados)
          - [General:](#general)
          - [Navegación y edición:](#navegación-y-edición)
          - [Resultados y cuadrícula:](#resultados-y-cuadrícula)
  - [2. Fundamentos y Estructura de Base de Datos](#2-fundamentos-y-estructura-de-base-de-datos)
        - [Valor NULL](#valor-null)
        - [Primary Key (PK) \[Subir\] ](#primary-key-pk-subir-)
        - [Foreign Key (FK) \[Subir\] ](#foreign-key-fk-subir-)
        - [Propiedad IDENTITY \[Subir\]](#propiedad-identity-subir)
        - [Normalización de tablas](#normalización-de-tablas)
  - [Códigos de GIT usados:](#códigos-de-git-usados)


## 1. Configuración
### Instalación de SQL Server
Se descarga e instala el SQL Server, versión DEVELOPER
Al Instalar el SQL Server 2022
- Usuario:    USER ó  SA
- Contraseña: Password123

Se instalan
- SQL Server Replication
- Full-Text and Semantic Extractions for Search
- Integration Services

[Subir](#top)
### Verificar la correta instalación de SQL Server
Abrir "Servicios" en Windows.
Se verifica que aparezcan 2 servicios: 
- SQL Server (MSQLSERVER2022)
- SQL Server Agent (MSQLSERVER2022)

[Subir](#top)
### Instalación de SQL Server Management Studio (SSMS)
Se realiza luego de instalar el SQL Server
Se descarga el instalador de SQL Server Management Studio (SSMS)
Al momento, versión 19.1
Se instala. Se deja la ruta de configuración por defecto.
Se reinicia si así lo solicita el programa.

[Subir](#top)
### Conexión al motor SQL
Se busca SSMS en la barra de búsqueda
Se despliega para la conexión.
En el servidor, que este sea el que nombramos en la instalación (MSQLSERVER2022)
Se puede usar el texto ".\\" para conectarse al servidor por defecto
En la autenticación, como se haya configurado. En ESTE caso, solo autenticación de SQL Server
Usuario: SA, Password: Password123
Se verifica que el símbolo de base de datos aparezca en <span style="color:green">*VERDE*</span>.

[Subir](#top)
### Conociendo Microsoft SQL Management Studio
Entorno que nos permite conectarnos a distintas instancias de bases de datos y poder administrar sus objetos (tablas, procesos, diagramas, objectos de BD, entre otros). Nos conectamos al motor y gestionamos objetos.
- **Object Explorer**: Panel izquierdo. Permite conocer las instancias a las que estamos conectados
- **Solution Explorer**: Panel derecho. Muestra soluciones que estamos gestionando con distintos proyectos. En el curso: 1 solución con 1 proyecto dentro.
- **Comandos**: Cada panel tiene unas opciones, como un PIN para fijar u ocultar las ventanas.
- **New query**: o Ctrl + N. Se abre una ventana en el centro para hacer Querys. En el menú ppal, se selecciona "master", la base de datos por defecto.
- **Soluciones y proyectos**: Al hacer nuevos Query, se van creando archivos dentro de la solución, en un agrupador de Miscelánea. Para darle orden, creamos un proyecto. Clic derecho en la Solución, luego en Add y finalmente en New Project.
  - Al abrir o cerra una Solución, es posible que siempre pregunte la contraseña. Para evitar esto, dentro del proyecto, se elimina la conexión que existe, y allí mismo, clic derecho, crear nueva conexión, se establece todo de nuevo, y ya. Con crear esta conexión desde el proyecto ya NO volverá a solicitar la contraseña. 
- **Ejecución de script**: Con "Execute" o con F5. Se abre la ventana de *Resultados*.
- **Resultados**:  Se abre/cierra con CTRL+R. Arroja información de la ejecución de las consultas. Es posible que se muestre el resultado como texto (Message) o como tabla (Results). Si no aparece la tabla, dar Ctrl+D y ejecutar de nuevo la consulta.
- Es posible mover los paneles de ubicación. Se arrastra desde el título de cada panel y se ubica donde se desee.
- Desde el menú *File*, toda la apertura, cierre y guardado de proyectos, soluciones.
- Desde el menú *Edit*, copiar, pegar, deshacer, entre otros.
- Desde el menú *View*, se pueden abrir de nuevos los paneles que se cierren.
- Desde el menú *Query*, ejecución y debuggueo de las consultas.
- Desde el menú *Project*, añadir nuevos elementos a un proyecto (conexiones, queries, etc)
- Desde el menú *Tools*, distintas herramientas dentro del SMSS
- Desde el menú *Window*, es posible resetear la vista para volver a la vista por defecto.
- En los menús, existe el Parse (un chulo), para chequear si la consulta está bien escrita. CTRL+F5
- Existe la opción de comentar varias líneas a la vez
- También la de indentar o des-indentar texto

[Subir](#top)
### Atajos de teclado más utilizados
Aquí tienes una lista de algunos atajos de teclado muy utilizados en SQL Server Management Studio (SSMS):

###### General:
- Ctrl + N: Abrir una nueva ventana de consulta.
- Ctrl + O: Abrir un archivo de script.
- Ctrl + S: Guardar el archivo de script actual.
- F5: Ejecutar el script seleccionado o todo el script.
- F8: Mostrar panel Object Explorer.
- Ctrl + Alt + L: Mostrar panel Solution Explorer.
- Ctrl + R: Mostrar u ocultar el panel de resultados.
- Ctrl + Shift + U: Cambiar el texto seleccionado a mayúsculas.
- Ctrl + Shift + L: Cambiar el texto seleccionado a minúsculas.
- Ctrl + K + C: Comentar la selección.
- Ctrl + K + U: Descomentar la selección.

###### Navegación y edición:
- Ctrl + G: Ir a un número de línea específico dentro del script.
- Ctrl + Shift + Flecha izquierda/derecha: Seleccionar palabras completas a la izquierda/derecha del cursor.
- Shift + Flecha arriba/abajo: Seleccionar bloques de texto hacia arriba/abajo.

###### Resultados y cuadrícula:
- Ctrl + D: Modo de visualización de cuadrícula.
- Ctrl + T: Modo de visualización de texto.

[Subir](#top)
## 2. Fundamentos y Estructura de Base de Datos
Base de datos: símil con una biblioteca
- Biblioteca: secciones, estantes, libros y las propiedades de cada libro (Título, Autor, Género, Año, ISBN.)
- Base de datos:
  - Tabla
  - Campos: (las "columnas"). Título, Autor, Género, Año, ISBN.
  - Registros: los valores en cada campo
Similar a EXCEL. Misma organización.

[Subir](#top)
##### Valor NULL
Un valor NULL representa la ausencia de un valor en una columna de una tabla. Esto indica que no se ha asignado ningún valor en esa columna determinada.

Los valores NULL son diferentes de los valores en blanco o los valores numéricos como el 0 (cero), ya que estos últimos son valores válidos que se pueden asignar a una columna. Por ejemplo, si una columna de la tabla de Impuestos, algunos de esos valores pueden contener 0 (cero), mientras que otros pueden no tener ningún valor de impuesto asignado aún, en cuyo caso la columna tendría el valor NULL.

##### Primary Key (PK) [[Subir](#top)] <a name="Primary Key (PK)"></a>
[Recursos de la clase](./RecursosCurso/S04.PrimaryKey.pdf)

Definiciones y reglas generales
1. La clave primaria o primary key, identifica de manera unívoca (única) a cada registro de una
tabla.
1. El valor que contiene la columna definida como primary key, debe ser único.
2. El valor debe ser NOT NULL (no permitirá valores nulos)
3. Una tabla puede tener más de un campo PK, a la que llamaremos CLAVE COMPUESTA
4. Sea SIMPLE o COMPUESTA, cada tabla solo podrá tener una clave primaria (PRIMARY KEY). Es decir que sólo habrá una única clave primaria de ese tipo. No se podrá crear otra combinación.

##### Foreign Key (FK) [[Subir](#top)] <a name="Foreign Key (FK)"></a> 
[Recursos de la clase 1](./RecursosCurso/S04.ForeignKey.pdf)
[Recursos de la clase 2](./RecursosCurso/S04.Restricciones.pdf)

Apunta a la PK de otra tabla.
Sirve para crear reglas de integridad referencial. Los valores con que se diligencia un registro, se podrán llenar ÚNICAMENTE con valores en la tabla a la que apunta la FK. En el Recurso 1, se evidencia a valores como "PER", "ESP" que generarán errores en el SQL.

Definiciones y reglas generales
1. La clave foránea o foreign key, debe ser del mismo tipo de dato que su campo relacionado.
2. El valor del campo definido como FK puede ser NULL
   1. Si no le incluyo ningún valor a un registro, no estoy violando las reglas del FK.
3. Una tabla puede tener más de un campo FK


<a name="Propiedad IDENTITY"></a>
##### Propiedad IDENTITY [[Subir](#top)]
[Recurso de la clase](./RecursosCurso/S04.Identity.pdf)

- La propiedad Identity se puede establecer a uno o más campos de una tabla determinada.
- Un campo con propiedad Identity activada, hará que su valor se incremente automáticamente a medida que se inserten registros en la tabla.
- Es por ello que, para que un campo pueda ser Identity, su tipo de dato debe ser numérico.
- Por lo general establecemos Identity a un campo que es Primary Key. Con esto logramos que su valor no se duplique, generando registros unívocos (únicos)

Se usa de la siguiente forma, donde el primer valor es el SEED, y dice que arrancará desde el valor de 1, y el segundo valor es el INCREMENT, donde cada registro será de la forma 1, 2, 3, 4, etc.

~~~
[nombrecampo] [int] IDENTITY(1,1)
~~~

[Subir](#top)
<a name="Normalización de tablas"></a>
##### Normalización de tablas
[Recurso de la clase](./RecursosCurso/S04.Normalizacion2.pdf)

## Códigos de GIT usados:
~~~
git init
git config --global user.email "jaosoriop93@gmail.com"   
git config --global user.name "jaosoriop93"                
git commit -m "Primer carga a GIT del curso de SQL Server"   
git remote add origin https://github.com/jaosoriop93/2023-udemy-master-sql-server.git
git add .
git mv notas.md README.md
git push -u origin master
~~~