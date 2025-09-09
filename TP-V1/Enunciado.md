Universidad Tecnologica Nacional Facultad Regional Buenos Aires

# Gestion de Datos / Bases de Datos

Trabajo Practico

2° Cuatrimestre 2025

FRBA - Nombre del Trabajo Practico: Gestión de Cursos

Enunciado V1.0

Indice

Introduccion 3   
Objetivos generales 4   
Descripcion general 4   
Componentes del TP 4   
Base de Datos y Modelo de Datos 5   
Especificacion de casos de uso 5   
1. Gestión de Publicaciones 6   
2. Gestion de Ventas 7   
3. Gestion de Envios 7   
4. Gestion de Pagos 8   
5. Facturacion Marketplace 8   
Consideraciones 9   
Requerimientos del TP 10   
General 10   
Modelo Transaccional del Sistema 10   
Base de Datos 10   
Consideraciones 11   
Modelo de Inteligencia de Negocios (Bl) 11   
Base de Datos 11   
Especificacion del Modelo de Bl 12   
Implementación 14   
General 14   
Base de Datos 14   
Restricciones 15   
Condiciones de Evaluación y Aprobación 16   
Testing de Scripts 16   
Consultas SQL 17   
Sobre los grupos 17   
Entregas 17   
Fechas de entrega y condiciones 18   
Entrega del DER 18   
Entrega de Modelo de Datos Relacional y Migración 18   
Entrega de Bl 19   
Condiciones de Entregas 19   
Formato de entrega 20   
Lugar de envio 20   
Asunto 20   
Cuerpo del Mail 21   
Adjunto 21   
Estructura del archivo zip 22   
Readme.txt 22
Estrategia.pdf 22 232323 232425   
DER.jpg   
DER_BI.jpg   
Idata   
Consideración   
Ayuda y contacto   
Obtención de herramientas

# Introduccion

# Objetivos generales

El presente trabajo practico persigue los siguientes objetivos generales

. Promover la investigacion de técnicas de base de datos.   
. Aplicar la teoria vista en la asignatura en una aplicacion concreta. Desarrollar y probar distintos algoritmos sobre datos reales. Fomentar la delegacion y el trabajo en grupo.

# Descripcion general

Mediante este trabajo práctico se intenta simular la implementación de un nuevo sistema. El mismo permite gestionar distintos cursos que brinda una institución incluyendo las inscripciones de alumnos, cursada y finales. Permite también la gestión de pagos y encuestas.

La implementación de dicho sistema, requiere previamente realizar la migración de los datos que se tenian registrados hasta el momento. Para ello es necesario que se reformule el diseno de la base de datos y los procesos,de manera tal que cumplan con los nuevos requerimientos.

Ademas, se solicita la implementacion de un segundo modelo, con sus correspondientes procedimientos y vistas, que pueda ser utilizado para la obtenci6n de indicadores de gesti6n, analisis de escenarios y proyeccion para la toma de decisiones.

# Componentes del TP

El alumno recibirä dos componentes y, en base a estos,deberä realizar el modelo y los procedimientos correspondientes. Los componentes a recibir son:

# Base de Datos y Modelo de Datos

La catedra provee un script que permite crear un esquema sobre una base de datos en el motor SQL Server 2022. Este incluye una unica tabla, lamada maestra, que contiene datos provistos por la catedra correspondientes al dominio del negocio que se describe en el TP.

Los datos de esta tabla se encuentran desorganizados y no poseen ningun tipo de normalizacion.

La logica del negocio esta definida, en su mayoria, por la especificacion de los principales casos de uso que estan implementados actualmente (tabla maestra).

El alumno debera analizar los datos contenidos en dicha tabla y confeccionar un nuevo modelo de datos que siga todos los estandares de desarrollo de bases de datos explicados durante la cursada.

Si se presentan dudas al respecto, es recomendable consultar al grupo de Google de la materia antes de tomar decisiones incorrectas.

# Especificacion de casos de uso

A continuacion， se detallan algunas especificaciones de casos de uso relacionados al nuevo sistema, con el objetivo de contextualizar y ayudar al entendimiento de la operacion del mismo.

Esta funcionalidad permitira gestionar las inscripciones que realicen los alumnos a los cursos.

Por cada inscripcion se registra la siguiente información.

Nro. Inscripcion: Identificador unico para cada inscripción Fecha inscripcion: fecha en que se inscribe el alumno Alumno: Se registra el alumno que se inscribe,con toda su informaci6n (nombre, dni, domicilio, etc.) . Curso: Curso al que se inscribe el alumno. Los cursos están previamente dados de alta en el sistema con su respectiva información: 0 C6digo del Curso: Identificador unico para cada curso $\bigcirc$ Sede: La institucion tiene varias sedes.Los cursos se dictan por sede. $\bigcirc$ Profesor: el profesor que dicta el curso. Se tienen registrados todos los datos del mismo. $\bigcirc$ Nombre: nombre del curso Descripcion: descripcion del curso $\bigcirc$ Categoria: Los cursos estan clasificados por categorias. $\bigcirc$ Fecha Inicio: fecha en que comienza el curso $\bigcirc$ Fecha Fin: fecha en que finaliza el curso 0 Duracion: en meses Dias: dias de la semana que se cursa. $\bigcirc$ Turno: Turno en que se dicta el curso.El tuno define el horario del curso. Existen 3 turnos: manana, tarde y noche. $\bigcirc$ Precio mensual: Los cursos se pagan de manera mensual, por los meses que dure el mismo. M6dulos: El contenido de los cursos esta dividido en módulos.

Estado: Una vez que el alumno se inscribe la institución decide si aprueba o rechaza dicha inscripci6n. El estado determina si una inscripci6n esta pendinte, aprobada o rechazada.

·Fecha respuesta: Fecha en que se aprueba o rechaza la inscripci6n.

Este módulo permitira gestionar los cursos y las evaluaciones de los alumnos dentro de la cursada de los mismos.

Un curso queda conformado por todos los alumnos cuya inscripción ha sido aprobada.   
Para cada curso se van registrando las evaluaciones que se toman a lo largo del mismo.   
Las evaluaciones se realizan por módulo.

Por cada evaluación se registra la siguiente informacion:

. Fecha evaluacion: fecha en que se evalua. Modulo: Módulo del curso que se esta rindiendo. Por cada alumno del curso se registra: $\bigcirc$ Leg. Alumno: alumno que rindi6. $\bigcirc$ Nota: nota que se sac6. $\bigcirc$ Presente: si concurrio o no el alumno a la evaluacion $\bigcirc$ Instancia: Nro. de vez que rinde el módulo.

Además los alumnos deben realizar y presentar un trabajo practico. Por cada TP se registra:

. Curso: al que pertenece el TP Alumno: al que pertenece el TP   
. Fecha de evaluacion: fecha en que se evalua el TP   
. Nota: nota del TP

# 3.Gestion de Inscripcion a Finales

Al aprobar la cursada el alumno debe rendir un examen final.   
Hay varias instancias de final para cada curso y el alumno se puede inscribir a la que quiera.

Por cada inscripci6n de alumno se registra:

? Nro. Inscripcion: Identificador unico para cada inscripcion Fecha Inscripcion: Fecha en que se inscribe el alumno.   
. Alumno: Alumno que se inscribe. Final: Final al cual se inscribe. Las instancias posibles de final estan previamente dadas de alta con la siguiente información principal: OFecha: fecha en que se toma el final

O Hora: hora en que se toma el final Curso: Curso sobre el cual se toma el final

# 4. Gestion de Evaluaciones Finales

Al momento de tomar el final se registran las notas de los alumnos. Por cada evaluacion final se registra la siguiente información:

. Alumno: alumno que rindió/inscripto Presente: si concurrio o no el alumno a la evaluación Nota: nota que se sacó . Profesor: Profesor que corrigió el final

# 5. Gestion de Pagos

Este módulo permite registrar y gestionar los pagos de los alumnos. Todos los meses se generan las facturas a los alumnos que deben pagar, en función de lo que estén cursando. Por cada factura se registra la siguiente información:

Nro. Factura: identificador unico de la factura   
. Fecha: fecha de emision de la factura Fecha vencimiento: fecha antes de la cual se debe pagar la factura   
$\bullet$ Alumno: alumno al cual se emite la factura Detalle de Factura: si el alumno está inscripto en más de un curso se emite una unica factura con el detalle: $\bigcirc$ Curso: curso a partir del cual se le emite la factura al alumno. $\bigcirc$ Periodo: mes/ano al que hace referencia la factura $\bigcirc$ Importe: Importe correspondiente al curso y al periodo.

Importe Total: importe total a pagar

Por cada Pago que realice el alumno se registra:

Id Pago: identificador unico del pago Factura: factura a la cual corresponde el pago Fecha: fecha en que se realiza el pago. Importe: importe total pagado. Medio de Pago: medio de pago utilizado

Este módulo permite gestionar las encuestas realizadas por cada curso. Una vez finalizado el curso, se realiza una encuesta para que los alumnos puedan completar de manera anónima.

Por cada encuesta completada se registra la siguiente informaci6n:

Curso: curso sobre el cual es la encuesta   
. Fecha Registro: fecha en que el alumno completa la encuesta.   
. Detalle: la encuesta está compuesta por varias preguntas. Por cada respuesta a cada una de ellas se registra: $\bigcirc$ Pregunta: pregunta que se está respondiendo. $\bigcirc$ Respuesta: Las respuesta es numérica con un valor posible del 1 al 10   
. Observaciones: campo libre que el alumno puede completar con las observaciones que quiera realizar.

# Consideraciones

Cabe aclarar que la especificación de casos es solo un resumen sobre los datos que se encuentran en la tabla maestra, a modo de ilustrar las principales operaciones que se realizan en el sistema y son particularmente especiales en el contexto del trabajo practico. El alumno debe relevar los restantes campos correspondientes a cada una de las entidades a modelar.

Tener en cuenta que al tratarse de datos DESNORMALIZADOSy DESORGANIZADOS pueden existir inconsistencias que deberán documentar y poder controlar su impacto en el diseno de la base de datos. Por ej. DNI duplicados, fechas invertidas o mal cargadas, gestión de ventas que pertenecen a otros vendedores,etc.La resolución de estas inconsistencias NUNCA debe llevar a modificar los datos originales O suponer， deducir o inferir causas y motivos. En los procesos de migración es recurrente encontrarse con estos errores de sistemas anteriores.La modificación de dichos datos se realizarä en otra etapa de desarrollo.

# Requerimientos del TP

# General

El alumno deberá primero，disenar el nuevo modelo de datos，crear todos los componentes de base de datos y realizar la migración de datos. Debera luego implementar un modelo de Inteligencia de Negocios que le permita obtener información puntual para un tablero de control.

# Modelo Transaccional del Sistema

El alumno deberä disenar el modelo de datos correspondiente y desarrollar un script de base de datos SQL Server que realice la creacion de su modelo de datos transaccional y la migración de los datos de la tabla maestra a su propio modelo.

# Base de Datos

El alumno debera crear un modelo de datos que organice y normalice los datos de la unica tabla provista por la catedra.

Se debe incluir:

. Creacion de nuevas tablas. Creacion de claves primarias y foraneas para relacionar estas tablas. Creacion de constraints y triggers sobre estas tablas cuando fuese necesario. Creación de los indices para acceder a los datos de estas tablas de manera eficiente.   
. Migracion de datos: Se deberán cargar todas las tablas creadas en el nuevo modelo utilizando la totalidad de los datos entregados por la cätedra en la unica tabla del modelo anterior. Para realizar este punto deberan utilizarse Stored Procedures. Creación de su propio esquema con el nombre del grupo elegido

El alumno deberá entregar el DER del modelo transaccional y un unico archivo de Script que al ejecutar realice todos los pasos mencionados anteriormente, en el orden correcto. Todo el modelo de datos confeccionado por el alumno deberá ser creado y cargado correctamente ejecutando este Script una uinica vez.

# Consideraciones

Todas las columnas creadas para las nuevas tablas deberan respetar los mismos tipos de datos_de las columnas existentes en la tabla principal. A su vez el alumno podra crear nuevas columnas,claves e identificadores para satisfacer sus necesidades. Pero nunca se podrä inventar informacion, por ejemplo, crear una sucursal o una venta que nunca existi6.

Tener en cuenta que DEBEN crear su propio esquema con el nombre de su grupo, esto permite que tengan su espacio propio de resolución y no se mezclen y/o utilicen la solucion de otro grupo o la propia que tenemos para correcci6n del trabajo practico

# Modelo de Inteligencia de Negocios (BI)

En la segunda etapa el alumno deberá generar un archivo de Script que al ejecutarse realice la creación de un nuevo modelo de inteligencia de negocios y que migre los datos de su sistema transaccional a dicho modelo de datos, el cual permitirä acceder a las consultas que administren el tablero de control. En el mismo se debera incluir también la generacion de las vistas necesarias para resolver las consultas de negocio.

# Base de Datos

El alumno debera crear un modelo de datos que organice y genere un modelo de BI los cuales deben soportar la ejecucion de consultas simples para resolver las consultas que se definiran mas adelante.

Se debe incluir:

. Creación de nuevas tablas y vistas que componen el modelo de Inteligencia de Negocios propuesto. Creacion de claves primarias y foráneas para relacionar estas tablas.   
. Migración de datos al modelo dimensional: Cargar todas las tablas creadas en el modelo dimensional utilizando los datos ya migrados al modelo de datos transaccional creado para resolver los casos de uso definidos. No se debe crear una nueva base de datos para la realizacion de las tareas anteriormente mencionadas. Las mismas deben realizarse dentro de la misma base de datos, con un prefijo BI_nombre_de_tabla.

El alumno deberá entregar el DER del Modelo de BI y un nuevo archivo de Script, siempre dentro del mismo esquema，que，al ejecutarse，realice todos los pasos mencionados anteriormente，en el orden correcto. Todo el modelo de datos confeccionado por el alumno deberá ser creado y cargado correctamente ejecutando este Script una unica vez.

Todas las columnas creadas para las nuevas tablas deberan respetar los mismos tipos de datos_de las columnas existentes en la tabla principal. A su vez el alumno podrä crear nuevas columnas, claves e identificadores para satisfacer sus necesidades.

# Especificacion del Modelo de BI

Teniendo en cuenta el Modelo de Datos transaccional creado, que resuelve la gestión de las pedidos, ventas, compras, y envios de la fabrica, se deberä generar un nuevo modelo de datos, de Inteligencia de Negocios,que permita unificar la información necesaria para facilitar la creacion de los tableros de control a nivel gerencial.

Se deberan considerar como minimo,las siguientes dimensiones además de las que el alumno considere convenientes:

. Tiempo $:$ ano/cuatrimestre/mes Sede Rango etario alumnos $\begin{array} { r l } { \circ } & { { } < 2 5 } \\ { \circ } & { { } 2 5 - 3 5 } \\ { \circ } & { { } 3 5 - 5 0 } \\ { \circ } & { { } > 5 0 } \end{array}$   
Rango etario profesores $\begin{array} { l l } { { \circ } } & { { 2 5 - 3 5 } } \\ { { } } & { { } } \\ { { \circ } } & { { 3 5 - 5 0 } } \\ { { } } & { { } } \\ { { \circ } } & { { > 5 0 } } \end{array}$   
. Turnos Cursos   
. Categoria de Cursos Modelo Sill6n Medio de Pago Bloques de Satisfaccion $\bigcirc$ Satisfechos: Notas entre 7 y 10 $\bigcirc$ Neutrales: Notas entre 5 y 6 $\bigcirc$ Insatisfechos: Notas entre 1 y 4

En función de estas dimensiones se deberán realizar una serie de vistas que deberán proveer, en forma simple desde consultas directas la siguiente informacion para los indicadores de negocio:

1. Categorias y turnos mas solicitados. Las 3 categorias de cursos y turnos con mayor cantidad de inscriptos por ano por sede.

2. Tasa de rechazo de inscripciones: Porcentaje de inscripciones rechazadas por mes por sede (sobre el total de inscripciones).

3. Comparacion de desempeno de cursada por sede:. Porcentaje de aprobación de cursada por sede, por ano. Se considera aprobada la cursada de un alumno cuando tiene nota mayor o igual a 4 en todos los módulos y el TP.

4. Tiempo promedio de finalizacion de curso: Tiempo promedio entre el inicio del curso y la aprobacion del final segun la categoria de los cursos, por ano. (Tener en cuenta el ano de inicio del curso)

5. Nota promedio de finales. Promedio de nota de finales segun el rango etario del alumno y la categoria del curso por semestre.

6. Tasa de ausentismo finales: Porcentaje de ausentes a finales (sobre la cantidad de inscriptos) por semestre por sede.

7. Desvio de pagos: Porcentaje de pagos realizados fuera de termino por semestre.

8. Tasa de Morosidad Financiera mensual. Se calcula teniendo en cuenta el total de importes adeudados sobre facturación esperada en el mes.El monto adeudado se obtiene a partir de las facturas que no tengan pago registrado en dicho mes.

9. Ingresos por categoria de cursos: Las 3 categorias de cursos que generan mayores ingresos por sede, por ano.

10. Indice de satisfaccion. Indice de satisfaccion anual, segun rango etario de los profesores y sede. El indice de satisfaccion es igual a (( $\%$ satisfechos - $\%$ insatisfechos) $+ 1 0 0 ) / 2$

Teniendo en cuenta que

$\bigcirc$ Satisfechos: Notas entre 7 y 10   
$\bigcirc$ Neutrales: Notas entre 5 y 6   
$\bigcirc$ Insatisfechos: Notas entre 1 y 4

# Implementacion

# General

A continuaci6n, se detalla la implementación de cada componente.

# Base de Datos

El alumno debe instalar el motor de base de datos SQL Server.

Una vez instalado el motor de base de datos se deberä instalar la herramienta cliente de trabajo: “Microsoft SQL Server Management Studio Express” para SQL Server 2019. Ejecutar esta aplicacion e ingresar los datos del usuario“sa” creado anteriormente (en modo “Autenticacion de SQL Server").

Dentro del “Management Studio” deberä crear una nueva base de datos con los parametros por defecto y nombre de base “GD2C2025".

Una vez que se encuentra la base de datos creada y configurada con el usuario,es necesario ejecutar los dos scripts provistos. Para ello se debe ejecutar un comando de consola de SQL Server llamada “sqlcmd'. Este comando debe ejecutar en orden los siguientes dos archivos:

gd_esquema.Schema.sql:Estearchivogeneraunesquemallamado "gd_esquema” dentro de la base de datos y lo asigna al usuario “gd". gd_esquema.Maestra.Table.sql: Este archivo crea la tabla principal del trabajo practico y la carga con los datos correspondientes. El archivo posee un volumen significante y no puede ser ejecutado desde el “Managment Studio".

La catedra provee un archivo BATCH para ejecutar esta operaci6n，denominado “EjecutarScriptTablaMaestra.bat”. Haciendo doble clic sobre el mismo se ejecutan ambos archivos ("gd_esquema.Schema.sql" y“gd_esquema.Maestra.Table.sql") a través del modo consola. El Script necesita aproximadamente 4O minutos para finalizar su ejecucion.

sqlcmd -S <ServidorInstancia> -U <Nombre_de_usuario> -P <Password> -i <Nombre_del_archivol>,< Nombre_del_archivo2> -a 32767

Ejemplo:

sqlcmd -S localhost\SQLSERVER2019 -U gd -P gd2019 -i gd_esquema.Schema.sql,gd_esquema.Maestra.Table.sql -a 32767 -0 resultado_output.txt

ACLARACION: Una aclaraci6n respecto a la autenticaci6n del usuario. En caso de haber seleccionado la“Autenticacion de Windows”, durante la configuracion de la base dedatos， alscriptanteriormentemencionadono debeagregarse“-U <Nombre_de_usuario> -P <Password>” dado que solamente se utilizarä en el caso de que la base de datos este configurada como autenticación mixta， por eso debe especificarse explicitamente el usuario y contrasena.

Luego de cargados todos los datos de la tabla maestra, el alumno deberá crear su propio esquema dentro de la base de datos. El nombre del esquema deberá ser igual al nombre del grupo registrado en la materia (el proceso de registración se explica mäs adelante). El nombre del esquema debe ser en mayusculas, sin espacios y separado por guiones bajos. Ejemplo “Los mejores” debe ser “LOS_MEJORES". Todas las tablas, stored procedures，vistas,triggers y otros objetos de base de datos nuevos que cree el alumno deberan pertenecer a este esquema creado. Si la solución entregada posee objetos de base de datos por fuera del esquema con el nombre del grupo, el TP sera rechazado sin evaluar su funcionalidad. Con esta configuración el alumno estä listo para empezar la implementacion de la parte de base de datos.

# Restricciones

El motor de base de datos deberä ser Microsoft SQL Server 2019. Tanto la versión Express, como la version ful sirven para realizar el trabajo. No podrä utilizarse ninguna herramienta auxiliar que ayude a realizar la migracion de datos. Tampoco podra desarrollarse una aplicacion personalizada para la migración de datos. La misma deberä ser efectuada en c6digo T-SQL en el archivo de script “script_creacion_inicial.sql".

# Condiciones de Evaluacion y Aprobacion

# Testing de Scripts

El alumno entregara a lo largo del TP dos scripts:

Script de base de datos transaccional (script_creacion_inicial.sql) con todo lo necesario para crear su modelo transaccional y cargarlo con los datos correspondientes. . Script de base de datos BI (script_creacion_Bl.sql) con todo lo necesario para crear el modelo de BI， poblarlo correctamente y crear las vistas solicitadas sobre el mismo.

La catedra probara el Trabajo Practico en el siguiente orden:

1. Se dispondrä de una base de datos limpia igual a la original entregada a los alumnos.   
2. Se ejecutara el archivo script_creacion_inicial.sql. proporcionado por el alumno. Este archivo deberá tener absolutamente todo lo necesario para crear y cargar el modelo de datos correspondiente. Toda la ejecuci6n deberá realizarse en orden y sin ningun tipo de error ni warning.   
3. Se ejecutara el archivo script_creacion_BI.sql proporcionado por el alumno. Este archivo deberä tener absolutamente todo lo necesario para crear y cargar el modelo de BI. Toda la ejecución deberä realizarse en orden y sin ningun tipo de error ni warning.

Los archivos“script_creacion_inicial.sql’ y“script_creacion_BI.sql’ deben contener todo lo necesario para crear el modelo de datos correspondiente y cargarlo con los datos. Si el alumno utilizó alguna herramienta auxiliar o programa customizado,el mismo no serä utilizado por la cätedra.

Si en su ejecucion se produjeran errores, el trabajo practico será rechazado sin continuar su evaluacion.

Todos los objetos de base de datos creados por el usuario deben pertenecer al esquema de base de datos creado con el nombre del grupo. Si esta restriccion no se cumple el trabajo practico será rechazado sin continuar su evaluación.

Tambien deberan ser considerados criterios de performance a la hora de crear relaciones e indices en las tablas.

# Consultas SQL

Todas las consultas SQL que haga la aplicación seran evaluadas de acuerdo al estándar de programación SQL explicado en clase. La performance de las mismas será tenida en cuenta a la hora de fijar la nota.

# Sobre los grupos

Deberan estar compuestos de 4 (cuatro） integrantes. Cada grupo debe tener un representante que será el unico que podra enviar mails con el TP para su corrección. Los grupos pueden estar compuestos por alumnos de distinto curso.Los alumnos deben registrar su grupo en un sitio de registracion especial, especificando un nombre unico que identifique al grupo.La URL del sitio de registración es la siguiente:

https://spreadsheets0.google.com/viewform?formkey=dG16aEltM Hc1X2hPN3U2YTVoVGxfeUE6MA

Al registrarse es necesario especificar un nombre de grupo. El nombre debe ser en mayusculas, sin espacios y separado por guiones bajos. Ejemplo “Los mejores” debe ser “LOS_MEJORES".

Luego, el 25/09/2O25 se enviaran los mails correspondientes con la confirmaci6n de los grupos y se les asignarä un numero de grupo ademas del nombre que determinaron. Luego de esa fecha, la cätedra enviará al grupo OFICIAL la conformaci6n de los mismos que serä inalterable hasta la finalizacion del cuatrimestre. Cualquier cambio de integrantes， sea por el motivo que fuese，debera realizarse antes de esa fecha. No aceptandose ninguna modificación pasada dicha fecha. Es obligación de los alumnos ingresar al grupo de la cätedra para obtener dicha informacion.

# Entregas

# Fechas de entrega y condiciones

A continuación se detallan las entregas que deberán realizarse y cuales son las condiciones generales y especificas para cada una de ellas.

# Entrega del DER

En esta primera entrega deberä enviarse solamente el DER del sistema en un archivo formato imagen, preferentemente JPG, el cual debe estar realizado con una herramienta acorde y ser netamente legible, no pixelado,con todas sus relaciones y campos que componen la entidad.

No se aceptaran imagenes de DER realizado a mano, en lapiz, birome, etc.

# Fecha: 02/10/2025 hasta las 12:00hs del mediodia (GMT 3:00 Buenos Aires).

En caso de que el DER no sea correcto,los errores seran informados en la corrección y deberan ser resueltos para la entrega del MODELO RELACIONAL. Esto quiere decir que no hay reentrega especifica del DER. La motivaci6n de esta entrega es la correccion de errores en el modelado de la base de datos antes del proceso de migraci6n.

# Entrega de Modelo de Datos Relacional y Migracion

En esta entrega se deberán enviar:

El script de creación y migraci6n de datos (un ünico script） del modelo relacional segun el formato especificado en la sección de formato de entrega del presente documento. . DER del modelo correspondiente (Corregido en el caso que corresponda) ·Documento de estrategia que respalde las decisiones tomadas.

# Modelo de datos y migracion

Fecha: 30/10/2025 hasta las 12:00hs del mediodia (GMT 3:00 Buenos Aires).

# Entrega de BI

En esta entrega se deberán enviar:

. DER del modelo relacional (Corregido en el caso que corresponda) El script de creación del modelo relacional y migración de datos (Corregido en el caso que corresponda) DER del modelo de BI correspondiente.   
. El script de creación y carga de datos (un unico script) del modelo de BI segun el formato especificado en la sección de formato de entrega del presente documento.   
·Documento de estrategia actualizado que respalde las decisiones tomadas.

# Entrega del Modelo de BI y la carga de datos

Fecha: 21/11/2025 hasta las 12:00hs del mediodia (GMT 3:00 Buenos Aires).

# Condiciones de Entregas

. Para cada entrega existe una sola fecha de entrega posible como limite. En el caso del DER solo existe una unica entrega, es decir, una vez corregido no hay re entregas intermedias. Si al momento de recibir la corrección deben realizar modificaciones, las mismas seran observadas al momento de entregar la migracion del modelo relacional. ExistenSOLO 2 (dos) posibilidadesdere entrega en total, independientemente si se trata del modelo relacional o el modelo de BI. Tanto la entrega del Modelo Relacional como el Modelo BI deben contar con un DER que respalde el modelo y facilite su correccion e interpretacion, ademas de los comentarios que crean necesarios en el apartado de estrategia.   
. La entrega del TP es grupal y la responsabilidad es de todos los integrantes del grupo para llegar en fecha.   
. Los TPs entregados luego del horario indicado, se considerarán fuera de término perdiendo asi una posibilidad de entrega y restándole un instancia de presentacion.   
. Las 2(dos) instancias de rentrega disponibles no tienen fecha asignada y seran determinadasporel equipo para entregar cuando consideren， bajo

responsabilidad de los alumnos, siempre y cuando no exceda la fecha final del TP.

Una vez entregado el TP, el periodo de corrección es aproximadamente de 7 dias. Este factor puede variar dependiendo de la cantidad de TPs entregados en ese momento.Por lo cual, se recomienda tenerlo en cuenta para la fecha final de entrega del trabajo. Si llegaran a realizar una sola entrega del TP, cercana a la ultima fecha (menor a 7 dias), es netamente responsabilidad del grupo y solo contarán con esa entrega habiendo perdido las chances anteriormente descritas, es decir, ünica entrega sin posibilidad de re entrega. . Cualquier indicio de copia (similitudes de edición, bloques de código,mismas descripciones,comentarios, etc.） serä penado con la pérdida de la materia, aun asi, tengan los parciales aprobados. Se supone que el TP tiene caracter de parcial y es una produccion propia del grupo.

# Fecha Final

La ultima fecha para recepci6n de TP es el dia O5/12/2025

# Formato de entrega

# Lugar de envio

La entrega debe realizarse por mail antes de las fechas estipuladas en el documento de enunciado.

La direccion del mail es:

gestiondedatos.entregas@gmail.com

# Asunto

El asunto del mail debe cumplir con el siguiente formato:

TP2C2025<b><curso><b><nombreGrupo><Nro de grupo> <b>: espacio en blanco

Ejemplos: TP2C2025 k9999 LOS_MEJORES 10 (Respetar los 2 espacios en blanco existentes)

# Cuerpo del Mail

El cuerpo del mail debe contener lo siguiente:

Grupo:   
Curso:   
Integrantes: <apellido>,<nombres> - <legajo> Nota: En caso de que haya integrantes de cursos distintos, se debe poner el curso de la persona elegida como representante.   
En caso de que algun alumno del grupo haya dejado de cursar o se haya cambiado de grupo, deberä ser aclarado en el mail de la entrega del TP.   
Solo debe enviarse la entrega desde el mail del representante del grupo.

Los alumnos deberán registrar su grupo en la direcci6n mencionada anteriormente. No se aceptaran TPs de grupos que no estén registrados.

# Adjunto

Se debe adjuntar el trabajo practico en un archivo del tipo zip con el mismo nombre que el asunto del mail.

Por cuestiones de seguridad Gmail rechaza todos los adjuntos que contengan archivos zip con .exe y .dll en su interior, por lo que es necesario renombrar la extension .zip a .zip123.   
Por ejemplo:   
TP2C2025k9999 LOS_MEJORES 10.zip123   
(Respetar los 2 espacios en blanco existentes)   
No enviar adjuntos de mas de 20 MB.La casilla de mail rechazarä mails que superen esta restriccion.

# Estructura del archivo zip

El archivo zip (.zipl23) debe contener la siguiente estructura de directorios: → 一

$\Rightarrow$ Readme.txt $\Rightarrow$ Estrategia.pdf DER.jpg $\Rightarrow$ DER_BL.jpg $\Rightarrow$ \data

(1) Archivo de script de base de datos “script_creacion_inicial.sql'.   
(2) Archivo de script de base de datos “script_creacion_Bl.sql".

# Readme.txt

Es un archivo de texto plano con los siguientes datos:

Curso Numero de grupo . Nombre y legajo de todos los integrantes Email del integrante responsable del grupo.

# Estrategia.pdf

Archivo PDF en donde se debera explicar en forma detallada la estrategia utilizada para desarrollar el TP. Debe incluir una explicaci6n y/o justificaci6n de las estructuras utilizadas, junto con todas las decisiones que fueron tomadas por el grupo a fin de dar cumplimiento al Trabajo Practico.

Cualquier consideración tomada o asumida deberä ser aclarada en este documento.

Se debe incluir el DER (legible y entendible) tanto del modelo de datos RELACIONAL como el de BI detallando cada entidad, relaciones, claves primarias y foraneas, indices, stored procedures， triggers， vistas，etc，que será estrictamente necesario para la correccion del modelo.

El archivo de estrategia debera entregarse en formato PDF obligatoriamente，con caratula e indice. En caso de no cumplir esta condicion, el TP sera rechazado sin evaluar su funcionalidad.

Sin este archivo la entrega no serä tomada como valida.

# DER.jpg

Se debe entregar también el DER del modelo Relacional en formato de imagen (PNG, JPEG, etc.)   
Sin este archivo la entrega no serä tomada como valida.

# DER_B1.jpg

Se debe entregar también el DER del modelo de BI en formato de imagen (PNG, JPEG, etc.)   
Sin este archivo la entrega no sera tomada como valida.

# \data

Archivo “script_creacion_inicial.sql’ con toda la creación del modelo de datos y la migración. El archivo debe poder ejecutar perfectamente de una sola vez, sin ningun tipo de error. Todas las sentencias deben estar perfectamente ordenadas para ejecutar correctamente. Cada sentencia debe estar comentada explicando su intencion. Archivo “script_creación_Bl.sql’ con toda la creación del modelo de inteligencia de negocios y su respectiva carga de datos. El archivo se debe poder ejecutar perfectamente de una sola vez, sin ningun tipo de error. Todas las sentencias deben estar perfectamente ordenadas para ejecutar correctamente. Cada sentencia debe estar comentada explicando su intención.

# Consideracion

Cualquier TP entregado que no cumpla con alguno de los requisitos mencionados en este documento, será rechazado sin ser evaluado, perdiendo una oportunidad de entrega.

# Ayuda y contacto

El sitio oficial de la materia es el siguiente: https://sites.google.com/site/gestiondedatosutn

También existe un grupo de Google en donde se podrán plantear dudas sobre el TP. Su direcci6n es la siguiente: http://groups.google.com/group/gestiondedatos

Todos los mensajes referentes al trabajo practico deberan contener la etiqueta [TP] antes del asunto. Ej: “[TP] consulta sobre base de datos".

Es obligación del alumno revisar el grupo periódicamente y mantenerse informado sobre actualizaciones, cambios de consignas, cambios de fecha, etc.   
La catedra no asigna ayudantes especificos a cada grupo. Todas las consultas deberan hacerse a través del grupo de Google.   
Es obligación de los alumnos ingresar periódicamente al grupo para informarse sobre cuestiones del TP. El grupo OFICIAL es el ünico medio de comunicacion con los alumnos sobre cuestiones del trabajo practico. La catedra no se hara responsable si existen grupos paralelos y que no sea el que se detalló en el siguiente enunciado. Cualquier tipo de informacion sobre el trabajo práctico que haya sido brindada por los docentes, tendrä que ser validada con los ayudantes ya sea el Ing.L6pez Matias Miguel o el Ing. Ariosti Maximiliano.

A lo largo de la cursada pueden ir surgiendo dudas particulares sobre el Trabajo Practico que sean utiles para el resto de los alumnos.Para ello la cätedra cuenta con un documento denominado “Apéndice del Enunciado” en el cual se agregan consideraciones generales de manera online. Su dirección es la siguiente:

https://docs.google.com/document/d/1IR3G8zr5MXvNaKzjsq6JavU NhdNZPIL2jcw9EmXhaUY/edit?usp=drive_link

Inicialmente el Apéndice se encuentra vacio. A medida que vayan surgiendo dudas sobre el desarrollo del Trabajo Practico, la cätedra evaluara agregar consideraciones generalesal documento. Esobligación del alumno revisar este documento periodicamente.

# Obtencion de herramientas

El motor de base de datos a utilizar es SQL Server 2019 ExpressPuede ser descargado de la siguiente direcci6n:

https://www.microsoft.com/es-ar/sql-server/sql-server-2019

Es necesario descargar e instalar dos componentes:

? Install Microsoft SQL Server 2019 Express Edition SQL Server Management Studio Express
