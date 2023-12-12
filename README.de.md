# Installationsschritte

-   Melden Sie sich mit dem SSH-Client bei Ihrem QIDI-Drucker an
-   Führen Sie diesen Befehl aus, um auf den klipper_config-Pfad zuzugreifen


    cd ~/klipper_config/

-   Clone 3Dwork Cutter Bundle – QIDI Edition


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!WARNUNG]Wird nur beim ersten Mal bei einer Neuinstallation benötigt:
>
> -   Führen Sie diesen Befehl aus, um auf den Bundle-Skriptordner zuzugreifen
>
>
>     cd /home/mks/klipper_config/3dwork-klipper-qidi/scripts/
>
> -   Installationsprogramm starten
>
>
>     ./3dwork-install.sh
>
> -   Fügen Sie in Ihrer Klipper-Web-Benutzeroberfläche diese Zeile am Ende Ihrer Moonraker.conf-Konfigurationsdatei hinzu:
>
>
>     [include 3dwork-klipper-qidi/moonraker.conf]

# Aufgabenliste

-   [x] Repository erstellen
-   [x] Basisinstallationsprogramm erstellen
-   [x] Erstellen Sie QIDI X-Max 3-Druckerprofil-Mods
-   [x] CI – Kernaktualisierung
-   [x] CI – Readme-Automatische Übersetzung
-   [x] MCU-Temperatur-Mod hinzufügen
-   [x] Fügen Sie eine manuelle Bedleveling-Konfiguration hinzu
-   [x] Arad Klippain kann
-   [ ] Fügen Sie Smart M600-Makros mit Filament-Management-Unterstützung, Variablen für benutzerdefinierte Einrichtung und Benutzermakros hinzu, um Aktionen von Drittanbietern zu integrieren (wie LED-Management, Summer usw.).
