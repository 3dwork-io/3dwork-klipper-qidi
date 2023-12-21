# Passaggi di installazione

-   Login using SSH client to your QIDI printer
-   Execute this command to access klipper_config path


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

# Elenco attività

-   [x] Crea archivio
-   [x] Crea programma di installazione di base
-   [x] Crea mod del profilo stampante QIDI X-Max 3
-   [x] CI: aggiornamento dei contenuti
-   [x] CI - Traduzione automatica Leggimi
-   [x] Aggiunto mod temperatura MCU
-   [x] Added manual bedleveling config
-   [x] Può aggiungere clip
-   [x] Aggiunte macro Smart PID con selezione della temperatura e della velocità della ventola e registro/notifica - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Aggiunte macro Smart M600 con supporto per la gestione dei filamenti, variabili per la configurazione personalizzata e macro utente per integrare azioni di terze parti (come gestione led, cicalino, ecc...) - M600 / PAUSE_MACRO / \_DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / \_ENABLE_FS
