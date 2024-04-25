Documentación técnica de la prueba de conocimientos

Desarrollador: Joan Hurtado

Empresa : Infodec


Introducción y Visión General:

El aplicativo infoTrips fue diseñado para a la prueba tecnica realizada para la empresa Infodec. Este
aplicativo se trataba de darle solucion al siguiente enunciado:
Marlon Torino es una ávido buscador de experiencias de viaje emocionantes alrededor del
mundo. Nos ha solicitado que le construyamos una pequeña aplicación web que pueda
utilizar en su computador personal, Tablet y telefono inteligente.
Marlon desea conocer según la ciudad a la que desea viajar cual es el clima en el día de hoy y
cuanto sería el presupuesto que tiene para su viaje en la moneda local del destino escogido.
Además, desea compartir esta información con su novia de nacionalidad alemana que no
habla ni entiende español.

Descripción del software y arquitectura:

Este software esta dividido en dos partes (Frontend y backend), el front-end desarrollado usando
Angular es el encargado mostrar la interfaz en la cual el usuario va a interactuar y de consumir las
API’s creadas en el backend y las externas para la conversion de dinero y del clima. Por otro lado el
backend desarrollado en laravel tiene las API’s para traer los paises y ciudades disponibles en el
aplicativo ademas de guardar las consultas realizadas por el usuario en el frontend.
Este aplicativo tambien cuenta con una base de datos creada en MYSQL compuesta por tres tablas de
las cuales hablaremos mas adelante.

Instalación y Configuración:

Para instalar y ejecutar este aplicativo vamos a necesitar un computador con conexión a internet y
listo.

 Paso 1: Clonar el proyecto desde GitHub ejecutando en una consola (Windows , Linux o Mac)
el comando git clone https://github.com/JoanHA/Technical-Test-Infodec.git. Recuerda tener
instalado Git.

 Paso 2: Entrar a la carpeta “Frontend ” y ejecutar “npm install”, lo mismo para la carpeta
backend.

 Paso 3: Iniciar servidor del backend ejecutando el comando “php artisan serve” en la carpeta
backend

 paso 4:Iniciar servidor del frontend ejecutando el comando “ng serve” en la carpeta frontend.

 Paso 5: Abrir el aplicativo en el navegador con la url http://localhost:4200

Listo tendremos el aplicativo disponible para utilizarlo.

API (Interfaz de Programación de Aplicaciones):

El Api del backend cuenta con 4 ENDPOINS

GET api/countries : Encargada de traer los paises disponibles

POST api/historicals : Encargada de guardar el historial de la consulta realizada

GET api/historicals : Encargada de traer el historial

GET api/countries/{country}: Encargada de traer las ciudades según el paisBase de Datos:

