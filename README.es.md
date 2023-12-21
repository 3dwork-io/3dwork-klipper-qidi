d# Pasos de instalación

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
> -   Desde su interfaz de usuario web de Klipper, agregue el contenido al final de su impresora.cfg (antes de la sección SAVE_CONFIG al final):<https://github.com/3dwork-io/3dwork-klipper-qidi/blob/8f9ae9970644369d1b3bdf7f6c5e72a331f8cb71/3dwork-klipper-qidi.cfg>![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/d76922d3-47ee-42ae-acff-f5523b143298)
> -   De la configuración anterior, habilite (eliminando #) o deshabilite (agregando #) las configuraciones que cumplan con sus requisitos/máquina... debería ser interesante si habilita nuestras macros regulares y de shell :)
> -   Macros PID con parámetros![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/98f7e7be-6e75-46e7-9da7-8c8d646fc478)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/a8c4b5c0-959d-40b3-87b6-7f4965467680)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/6cef6277-b344-40f1-b813-f911d17bc411)
> -   M600/Macros de gestión de filamentos con gestión de sensor de agotamiento de filamento para impresoras QIDI![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/dc37f889-224a-4d7f-bd13-0ef105c46e5f)
> -   Macros de Shell para Input Shaper, para XY y tensión de correa, cree el gráfico en una carpeta accesible desde la interfaz de usuario para descargarlo fácilmente![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/4182f04b-2913-4c7e-becb-029bc3801e5d)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/3191ec9f-6db6-40a6-b76e-814e6e860e78)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/8859285b-4703-4398-a138-7a4ae643de54)

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
