# Pasos de instalación

-   Inicie sesión usando el cliente SSH en su impresora QIDI
-   Ejecute este comando para acceder a la ruta klipper_config


    cd ~/klipper_config/

-   Paquete de cortador Clone 3Dwork - Edición QIDI


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!ADVERTENCIA]Sólo es necesario la primera vez en una instalación limpia:
>
> -   Ejecute este comando para acceder a la carpeta de scripts del paquete
>
>
>     cd /home/mks/klipper_config/3dwork-klipper-qidi/scripts/
>
> -   Iniciar instalador
>
>
>     ./3dwork-install.sh
>
> -   From your Klipper web UI add this line to the end of your moonraker.conf config file:
>
>
>     [include 3dwork-klipper-qidi/moonraker.conf]

# Lista de tareas

-   [x] Crear repositorio
-   [x] Crear instalador base
-   [x] Crear modificaciones de perfil de impresora QIDI X-Max 3
-   [x] CI: actualizar aspectos esenciales
-   [x] CI - Léame Traducción automática
-   [x] Agregar mod de temperatura MCU
-   [x] Agregar configuración de nivelación de cama manual
-   [x] Arad Klippain puede
-   [x] Agregue macros PID inteligentes con selección de temperatura y velocidad del ventilador y registro/notificación - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Agregue macros Smart M600 con soporte de gestión de filamentos, variables para configuración personalizada y macros de usuario para integrar acciones de terceros (como gestión de LED, zumbador, etc...)
