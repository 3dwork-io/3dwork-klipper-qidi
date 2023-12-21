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
>
> -   Fügen Sie über Ihre Klipper-Web-Benutzeroberfläche den Inhalt am Ende Ihrer Printer.cfg hinzu (vor dem Abschnitt SAVE_CONFIG am Ende):

<script src="https://gist.github.com/alienboyxp/8aeb3ce96eafd7f88a3176f63404aa53.js"></script>

-   Aktivieren (Entfernen von #) oder Deaktivieren (Hinzufügen von #) aus der vorherigen Konfiguration entsprechen die Konfigurationen Ihrem Computer/Ihren Anforderungen

# Aufgabenliste

-   [x] Repository erstellen
-   [x] Basisinstallationsprogramm erstellen
-   [x] Erstellen Sie QIDI X-Max 3-Druckerprofil-Mods
-   [x] CI – Kernaktualisierung
-   [x] CI – Readme-Automatische Übersetzung
-   [x] MCU-Temperatur-Mod hinzugefügt
-   [x] Manuelle Bedleveling-Konfiguration hinzugefügt
-   [x] Kann Clips hinzufügen
-   [x] Smart PID-Makros mit Temperatur- und Lüftergeschwindigkeitsauswahl sowie Protokoll/Benachrichtigung hinzugefügt – PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Smart M600-Makros mit Filament-Management-Unterstützung, Variablen für benutzerdefinierte Einrichtung und Benutzermakros zur Integration von Aktionen von Drittanbietern (wie LED-Verwaltung, Summer usw.) hinzugefügt – M600 / PAUSE_MACRO / \_DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / \_ENABLE_FS
