d# Étapes d'installation

-   Connectez-vous à l'aide du client SSH à votre imprimante QIDI
-   Exécutez cette commande pour accéder au chemin klipper_config


    cd ~/klipper_config/

-   Clone 3Dwork Cutter Bundle - Édition QIDI


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!AVERTISSEMENT]Nécessaire uniquement la première fois lors d'une nouvelle installation :
>
> -   Exécutez cette commande pour accéder au dossier des scripts du bundle
>
>
>     cd /home/mks/klipper_config/3dwork-klipper-qidi/scripts/
>
> -   Lancer le programme d'installation
>
>
>     ./3dwork-install.sh
>
> -   Depuis votre interface Web Klipper, ajoutez cette ligne à la fin de votre fichier de configuration moonraker.conf :
>
>
>     [include 3dwork-klipper-qidi/moonraker.conf]
>
> -   Depuis votre interface Web Klipper, ajoutez le contenu à la fin de votre imprimante.cfg (avant la section SAVE_CONFIG à la fin) :<https://github.com/3dwork-io/3dwork-klipper-qidi/blob/8f9ae9970644369d1b3bdf7f6c5e72a331f8cb71/3dwork-klipper-qidi.cfg>![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/d76922d3-47ee-42ae-acff-f5523b143298)
> -   À partir de la configuration précédente, activez (supprimez #) ou désactivez (ajoutez #) les configurations qui répondent à votre machine/exigences... devraient être intéressantes si vous activez nos macros régulières et shell :)
> -   Macros PID avec paramètres![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/98f7e7be-6e75-46e7-9da7-8c8d646fc478)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/a8c4b5c0-959d-40b3-87b6-7f4965467680)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/6cef6277-b344-40f1-b813-f911d17bc411)
> -   Macros de gestion M600/Filament avec gestion du capteur de fin de filament pour les imprimantes QIDI![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/dc37f889-224a-4d7f-bd13-0ef105c46e5f)
> -   Macros Shell pour Input Shaper, pour XY et tension de courroie, créez le graphique sur un dossier accessible depuis l'interface utilisateur pour un téléchargement facile![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/4182f04b-2913-4c7e-becb-029bc3801e5d)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/3191ec9f-6db6-40a6-b76e-814e6e860e78)![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/8859285b-4703-4398-a138-7a4ae643de54)

# Liste des tâches

-   [x] Créer un référentiel
-   [x] Créer un programme d'installation de base
-   [x] Créer des mods de profil d'imprimante QIDI X-Max 3
-   [x] CI - Mettre à jour l'essentiel
-   [x] CI - Traduction automatique Readme
-   [x] Ajout du module de température MCU
-   [x] Ajout de la configuration manuelle du niveau de lit
-   [x] Peut ajouter des clips
-   [x] Ajout de macros Smart PID avec sélection de la température et de la vitesse du ventilateur et journal/notification - PID_EXTRUDER / PID_BED / PID_ALL
-   [ ] Ajout de macros Smart M600 avec prise en charge de la gestion des filaments, de variables pour une configuration personnalisée et de macros utilisateur pour intégrer des actions tierces (comme la gestion des LED, le buzzer, etc...) - M600 / PAUSE_MACRO / \_DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / \_ENABLE_FS
