# Passaggi di installazione

-   Accedi utilizzando il client SSH alla tua stampante QIDI
-   Esegui questo comando per accedere al percorso klipper_config


    cd ~/klipper_config/

-   Pacchetto clone 3Dwork Cutter - Edizione QIDI


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!AVVERTIMENTO]Necessario solo la prima volta in caso di installazione pulita:
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
> -   From your Klipper web UI add the content at the end of your printer.cfg (before SAVE_CONFIG section at the end) :

\[{% gist 8aeb3ce96eafd7f88a3176f63404aa53 %}

<script src="https://gist.github.com/alienboyxp/8aeb3ce96eafd7f88a3176f63404aa53.js"></script>](https://github.com/3dwork-io/3dwork-klipper-qidi/blob/88f8336fe38dea556e204cf79ba4a59933279253/3dwork-klipper-qidi.cfg#L1)

-   Dalla configurazione precedente abilita (rimuovendo #) o disabilita (aggiungendo #) le configurazioni soddisfano i tuoi requisiti/macchina

# Elenco attività

-   [x] Crea archivio
-   [x] Create base installer
-   [x] Create QIDI X-Max 3 printer profile mods
-   [x] CI - Update Gists
-   [x] CI - Traduzione automatica Leggimi
-   [x] Aggiunto mod temperatura MCU
-   [x] Aggiunta la configurazione manuale del livellamento del letto
-   [x] Può aggiungere clip
-   [x] Aggiunte macro Smart PID con selezione della temperatura e della velocità della ventola e registro/notifica - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Added Smart M600 macros with filament management support, variables for custom setup and user macros to integrate third party actions (like led management, buzzer, etc...) - M600 / PAUSE_MACRO / \_DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / \_ENABLE_FS
