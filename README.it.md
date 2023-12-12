# Passaggi di installazione

-   Accedi utilizzando il client SSH alla tua stampante QIDI
-   Esegui questo comando per accedere al percorso klipper_config


    cd ~/klipper_config/

-   Pacchetto clone 3Dwork Cutter - Edizione QIDI


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!AVVERTIMENTO]Necessario solo la prima volta in caso di installazione pulita:
>
> -   Execute this command to access bundle scripts folder
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

-   [x] Create Repository
-   [x] Crea programma di installazione di base
-   [x] Crea mod del profilo stampante QIDI X-Max 3
-   [x] CI: aggiornamento dei contenuti
-   [x] CI - Traduzione automatica Leggimi
-   [x] Aggiungi il mod temperatura MCU
-   [x] Aggiungi la configurazione manuale del livellamento del letto
-   [x] Add Klippain ShakeTune
-   [x] Aggiungi macro Smart PID con selezione della temperatura e della velocità della ventola e registro/notifica - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Aggiungi macro Smart M600 con supporto per la gestione dei filamenti, variabili per la configurazione personalizzata e macro utente per integrare azioni di terze parti (come gestione led, buzzer, ecc...)
