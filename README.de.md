d# Installationsschritte

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
> -   Fügen Sie über Ihre Klipper-Web-Benutzeroberfläche den Inhalt am Ende Ihrer Printer.cfg hinzu (vor dem Abschnitt SAVE_CONFIG am Ende):<https://github.com/3dwork-io/3dwork-klipper-qidi/blob/8f9ae9970644369d1b3bdf7f6c5e72a331f8cb71/3dwork-klipper-qidi.cfg>![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/d76922d3-47ee-42ae-acff-f5523b143298)
> -   Aktivieren (Entfernen von #) oder Deaktivieren (Hinzufügen von #) aus der vorherigen Konfiguration die Konfigurationen, die Ihrem Computer/Ihren Anforderungen entsprechen ... sollte interessant sein, wenn Sie unsere regulären und Shell-Makros aktivieren :)
> -   PID-Makros mit Parametern![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/98f7e7be-6e75-46e7-9da7-8c8d646fc478)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/a8c4b5c0-959d-40b3-87b6-7f4965467680)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/6cef6277-b344-40f1-b813-f911d17bc411)
> -   M600/Filament-Management-Makros mit Filament-Runout-Sensor-Management für QIDI-Drucker![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/dc37f889-224a-4d7f-bd13-0ef105c46e5f)
> -   Shell-Makros für Input Shaper, für XY und Riemenspannung, erstellen das Diagramm in einem über die Benutzeroberfläche zugänglichen Ordner zum einfachen Herunterladen![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/4182f04b-2913-4c7e-becb-029bc3801e5d)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/3191ec9f-6db6-40a6-b76e-814e6e860e78)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/8859285b-4703-4398-a138-7a4ae643de54)

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
