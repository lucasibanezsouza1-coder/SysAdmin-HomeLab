# SysAdmin-HomeLab
An AI tool designed for use in the native Windows command prompt (cmd). It may have flaws or bugs, but feel free to use it however you like. I also have .bat and .ps1 scripts for system optimization, and I’ll be releasing others tailored for specific games. I’ll also share the code so you can customize everything—all of this is for Windows.
[Cronicas Name More.txt](https://github.com/user-attachments/files/34200569/Cronicas.Name.More.txt)

📚 CRÓNICAS DE NAME MORE — VOLUMEN 1

Autor: SysAdmin (Apodo: Name More, Desarrollador Principal)
Estado del Software: Versiones de Desarrollo de Software Abierto (Beta Abierta / Privada) [11, 22]

Capítulo I: El Sistema de Nomenclatura Estánda[Cronicas Name more VOL2.txt](https://github.com/user-attachments/files/34200573/Cronicas.Name.more.VOL2.txt)
r (Arquitectura)

Para evitar el caos operativo que sufren muchas empresas de TI, name more impone una regla estricta de nombres basada en prefijos semánticos:
• vxxx_CMD.bat: Scripts generales de infraestructura que utilizan el intérprete nativo de comandos de Windows (ligero, compatible).
• vxxx_POERshll.ps1: Scripts generales avanzados basados en objetos de .NET Core (PowerShell), capaces de reconfigurar características profundas del kernel del sistema operativo.
• botNxxxx.bat: Módulos experimentales de personalización estética y estructural del entorno de escritorio (en desarrollo y bajo cuarentena por seguridad).
• botsJxxxx.bat: Software optimizador multimedia global, diseñado para quitar cuellos de botella de hardware (RAM/Red/GPU) que afecten a la comunidad Gamer.
• botsYxxxx.ps1: Scripts de inyección de configuraciones de micro-nivel dedicados en exclusiva a un único cliente de juego (ej. Roblox).

Capítulo II: Crónica de los Bots de Sistema (Geral)


1. v1.0_CMD.bat & v1.1_POERshll.ps1

• ¿Para qué se usan?
Para restaurar la salud de la instalación de Windows y eliminar procesos fantasma de espionaje corporativo (telemetría de diagnóstico de Microsoft). Devuelven ciclos de reloj valiosos al procesador.
• ¿Cómo funcionan internamente?
	• Módulo DISM/SFC: Escanean el almacenamiento y comparan el código del sistema local con una base de datos limpia en la nube de Microsoft, reemplazando cualquier archivo corrupto al vuelo.
	• Módulo Telemetría: Fuerza al Administrador de Control de Servicios (sc.exe / Stop-Service) a apagar y bloquear permanentemente servicios pesados como el rastreador de errores y experiencias (DiagTrack).
• Requisitos Mínimos de Sistema:
	• Sistema Operativo: Windows 10 Home/Pro/Enterprise o Windows 10 IoT Enterprise LTSC (Arquitectura de 64 bits recomendada).
	• Permisos de Seguridad: Debe ejecutarse obligatoriamente bajo el token de Administrador del Sistema. De lo contrario, los comandos del Registro de Windows responderán con un código de error Acceso Denegado.

Capítulo III: Crónica de los Bots Gaming (Global y Dedicado)


1. botsJ1.0 y botsJ1.1 (Globales)

• ¿Para qué se usan?
Aumentan la tasa de cuadros por segundo (FPS) estables y eliminan los tirones de pantalla (stuttering) en entornos multijugador.
• ¿Cómo funcionan internamente?
	• Modifican el componente SystemProfile del Registro de Windows, cambiando la respuesta multimedia a 0 (latencia ultra baja).
	• Desactivan el estrangulamiento de paquetes de internet (NetworkThrottlingIndex = 0xffffffff), permitiendo que tu tarjeta de red reciba toda la información del servidor de juegos de golpe.

2. botsY1.0_Roblox.ps1 (Dedicado)

• ¿Para qué se usa?
Optimiza el motor gráfico de Roblox para forzarlo a funcionar más allá del límite estándar de FPS e inyectar APIs gráficas avanzadas.
• ¿Cómo funciona internamente?
El bot escanea los subdirectorios de la aplicación dentro de la ruta local (AppData), crea una carpeta estructural llamada ClientSettings y escribe un objeto JSON con códigos nativos del motor de Roblox. Forzar el valor PreferVulkan = True redirige las llamadas de texturas directamente a los sombreadores de hardware de la tarjeta de video, aliviando la carga del procesador.
• Requisitos Mínimos:
	• Roblox Player instalado a través de los ejecutables oficiales del sitio web o vía Bloxstrap (La versión de la Microsoft Store no soporta FFlags inyectadas localmente).

Capítulo IV: Crónica del Asistente (Beta Privada)


1. v2.2_ASISTENCIA.ps1

• ¿Para qué se usa?
Herramienta privada de uso exclusivo del desarrollador principal para automatizar el mantenimiento del portafolio del laboratorio.
• ¿Cómo funciona internamente?
A diferencia de los menús rígidos, este bot utiliza un motor de búsqueda de cadenas de texto regular (-match). Cuando el SysAdmin ingresa una orden abierta en lenguaje natural, el bot deconstruye la oración, busca coincidencias clave y, mediante el comando de generación de datos aleatorios (Get-Random), selecciona respuestas dinámicas de su biblioteca integrada para dar retroalimentación interactiva con personalidad sintética.





[Cronicas Name more VOL2.txt](https://github.com/user-attachments/files/34200588/Cronicas.Name.more.VOL2.txt)

📚 CRÓNICAS DE NAME MORE — VOLUMEN 2 (EDICIÓN REVISADA)

Desarrollador Principal: SysAdmin (11 años)
Proyecto: Documentación Oficial del Ecosistema de Automatización
Estado del Laboratorio: Fase Beta Avanzada

🛠️ Capítulo I: Cómo Hice Todo y el Registro de Fallos

El ecosistema de bots de name more nació de la necesidad de optimizar de forma automática Windows 10 IoT Enterprise LTSC, un sistema que viene muy recortado de fábrica y requiere administración empresarial.

🚨 El Gran Fallo: El Bug de Codificación Unix (LF)

Durante el desarrollo de la versión v0.2_CMD, el laboratorio se enfrentó a un problema crítico: el bot de CMD no hacía absolutamente nada. Al ejecutarlo, la ventana se cerraba instantáneamente o ignoraba las órdenes del usuario.
• ¿Por qué falló? (Análisis Técnico): Al inspeccionar el entorno con herramientas visuales, descubrimos que el editor de texto estaba guardando los archivos con codificación Unix (LF) en lugar de la codificación nativa de Windows (CRLF). El CMD clásico de Windows es una herramienta antigua y no sabe interpretar los saltos de línea de Unix; ve todo el código pegado en una sola línea gigante, se confunde, entra en cortocircuito y se apaga de golpe.
• La Solución Histórica: Rediseñamos la arquitectura del script hacia una estructura lineal ultra-compatible utilizando bloques condicionales cerrados con paréntesis if "%opcion%"=="x" (...) en lugar de saltos con goto. Además, se implementó el estándar de guardar los archivos como "UTF-8 con BOM" en el Bloc de Notas para obligar a Windows a reconocer las quebras de línea correctas.

💻 Capítulo II: Requisitos Mínimos por Nivel de Bot


1. Nivel Ligero (Bots Generales CMD y Asistencia Básica)

• Bots: v1.0_CMD.bat, botsJ1.0.bat
• Procesador (CPU): Cualquier procesador Intel Atom, Celeron o AMD antiguo (1 Núcleo a 1.5 GHz o superior).
• Memoria RAM: 2 GB de RAM.
• Impacto en el Sistema: Casi 0%. El CMD ejecuta las instrucciones y se cierra o se queda esperando en pausa sin consumir recursos.

2. Nivel Avanzado (Bots de PowerShell y Modificaciones del Kernel)

• Bots: v1.1_POERshll.ps1, botsJ1.1_POERshll.ps1, botsY1.0_Roblox.ps1
• Procesador (CPU): Intel Core i3 / AMD Ryzen 3 o superior.
• Memoria RAM: 4 GB a 8 GB de RAM.
• Impacto en el Sistema: Medio. Al arrancar, PowerShell carga módulos de red y del framework .NET, lo que puede elevar el uso de CPU por un par de segundos mientras inyecta los registros y las FastFlags en los archivos JSON.

3. Nivel Monitoreo Pesado (Modo Infinite)

• Bots: v3.0_INFINITE_ASISTENCIA.bat (Corriendo en segundo plano mientras juegas).
• Procesador (CPU): Intel Core i5 / AMD Ryzen 5 o superior (Se recomiendan procesadores de múltiples núcleos para que un núcleo se encargue del bot y los otros del juego).
• Memoria RAM: 8 GB a 16 GB de RAM.
• Impacto en el Sistema: Alto/Constante. Al refrescar e inspeccionar las carpetas temporales cada 5 segundos de forma infinita, la PC debe ser capaz de procesar este bucle de fondo sin causar caídas de FPS (stuttering) en el juego principal.

⚠️ Capítulo III: Limitaciones, Advertencias y Cuarentena


🟥 ADVERTENCIAS CRÍTICAS DE SEGURIDAD (Leer antes de usar):

1. El Factor Administrador: Todos los bots de optimización extrema (v1.0, v1.1, botsJ) editan ramas del registro de máquina local (HKLM). Deben ejecutarse como Administrador. Si se ejecutan en un usuario común sin permisos, las optimizaciones fallarán silenciosamente.
2. Cuarentena de Personalización (botN): Los bots encargados de alterar temas visuales quedan estrictamente prohibidos en la PC principal de producción del laboratorio. Se probarán únicamente en una PC secundaria (allí) para mitigar el riesgo de corrupción del Explorador de Windows (explorer.exe).
3. Advertencia del Modo Infinite: No dejes el v3.0_INFINITE_ASISTENCIA.bat encendido si vas a realizar tareas de renderizado de video o streaming de alta carga, ya que el comando timeout consume pequeños ciclos de reloj de forma constante que podrían afectar el rendimiento extremo de estas tareas de renderizado
