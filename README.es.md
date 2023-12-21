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
> -   Desde la interfaz de usuario web de Klipper, agregue esta línea al final de su archivo de configuración moonraker.conf:
>
>
>     [include 3dwork-klipper-qidi/moonraker.conf]
>
> -   Desde su interfaz de usuario web de Klipper, agregue el contenido al final de su impresora.cfg (antes de la sección SAVE_CONFIG al final):

\[{% esencia 8aeb3ce96eafd7f88a3176f63404aa53 %}

<script src="https://gist.github.com/alienboyxp/8aeb3ce96eafd7f88a3176f63404aa53.js"></script>](https://github.com/3dwork-io/3dwork-klipper-qidi/blob/88f8336fe38dea556e204cf79ba4a59933279253/3dwork-klipper-qidi.cfg#L1)

-   From the previous config enable (removing #) or disable (adding #) the configurations meets your machine/requirements

# Lista de tareas

-   [x] Crear repositorio
-   [x] Crear instalador base
-   [x] Crear modificaciones de perfil de impresora QIDI X-Max 3
-   [x] CI: actualizar aspectos esenciales
-   [x] CI - Léame Traducción automática
-   [x] Mod de temperatura MCU agregado
-   [x] Se agregó configuración de nivelación de cama manual.
-   [x] Puede agregar clips
-   [x] Se agregaron macros PID inteligentes con selección de temperatura y velocidad del ventilador y registro/notificación - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Se agregaron macros Smart M600 con soporte de administración de filamentos, variables para configuración personalizada y macros de usuario para integrar acciones de terceros (como administración de LED, zumbador, etc.) - M600 / PAUSE_MACRO / \_DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / \_ENABLE_FS
