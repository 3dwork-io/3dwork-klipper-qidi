# Passaggi di installazione

-   Accedi utilizzando il client SSH alla tua stampante QIDI
-   Esegui questo comando per accedere al percorso klipper_config


    cd ~/klipper_config/

-   Pacchetto clone 3Dwork Cutter - Edizione QIDI


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!AVVERTIMENTO]
> Only needed first time on clean installation:
>
> -   Esegui questo comando per accedere alla cartella degli script del bundle
>
>
>     cd /home/mks/klipper_config/3dwork-klipper-qidi/scripts/
>
> -   Avvia il programma di installazione
>
>
>     ./3dwork-install.sh
>
> -   Dall'interfaccia utente web di Klipper aggiungi questa riga alla fine del tuo file di configurazione moonraker.conf:
>
>
>     [include 3dwork-klipper-qidi/moonraker.conf]
>
> -   Dall'interfaccia utente web di Klipper aggiungi il contenuto alla fine del tuo fileprinter.cfg (prima della sezione SAVE_CONFIG alla fine):<https://github.com/3dwork-io/3dwork-klipper-qidi/blob/8f9ae9970644369d1b3bdf7f6c5e72a331f8cb71/3dwork-klipper-qidi.cfg>![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/d76922d3-47ee-42ae-acff-f5523b143298)
> -   Dalla configurazione precedente abilita (rimuovendo #) o disabilita (aggiungendo #) le configurazioni che soddisfano i tuoi requisiti/macchina... dovrebbe essere interessante se abiliti le nostre macro normali e di shell :) o config stampante
>     -   Macro del pacchetto QIDI di 3Dwork Clips
>             - PID Macros with parameters
>         ![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/98f7e7be-6e75-46e7-9da7-8c8d646fc478)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/a8c4b5c0-959d-40b3-87b6-7f4965467680)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/6cef6277-b344-40f1-b813-f911d17bc411)
>             - M600/Filament Management Macros with filament runout sensor management for QIDI printers
>         ![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/dc37f889-224a-4d7f-bd13-0ef105c46e5f)
>             - Shell Macros for Input Shaper, for XY and Belt tension, create the graph on an accessible folder from UI for easy download
>         ![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/4182f04b-2913-4c7e-becb-029bc3801e5d)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/3191ec9f-6db6-40a6-b76e-814e6e860e78)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/8859285b-4703-4398-a138-7a4ae643de54)
>     -   Configurazioni del pacchetto QIDI di 3Dwork Klipper
>         -   X-Max 3 - Funzionalità di livellamento manuale del letto, fornisce la configurazione per livellare manualmente o assistito dalla sonda del letto... maggiori informazioni -><https://klipper.3dwork.io/klipper/empezamos/nivelacion-cama-manual>
>         -   X-Max 3 - Abilita il report aggiuntivo sulla temperatura dell'MCU, fornisce la configurazione per mostrare altre temperature![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/872d4daf-f541-4091-b596-5ebb202ff85b)

# Elenco attività

-   [x] Crea archivio
-   [x] Crea programma di installazione di base
-   [x] Crea mod del profilo stampante QIDI X-Max 3
-   [x] CI: aggiornamento dei contenuti
-   [x] CI - Traduzione automatica Leggimi
-   [x] Aggiunto mod temperatura MCU
-   [x] Aggiunta la configurazione manuale del livellamento del letto
-   [x] Added Klippain ShakeTune
-   [x] Aggiunte macro Smart PID con selezione della temperatura e della velocità della ventola e registro/notifica - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Aggiunte macro Smart M600 con supporto per la gestione dei filamenti, variabili per la configurazione personalizzata e macro utente per integrare azioni di terze parti (come gestione led, cicalino, ecc...) - M600 / PAUSE_MACRO / \_DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / \_ENABLE_FS
