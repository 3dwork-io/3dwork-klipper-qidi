d# Étapes d'installation

-   Connectez-vous à l'aide du client SSH à votre imprimante QIDI
-   Exécutez cette commande pour accéder au chemin klipper_config


    cd ~/klipper_config/

-   Clone 3Dwork Cutter Bundle - Édition QIDI


    git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git

> [!AVERTISSEMENT]Nécessaire uniquement la première fois lors d'une installation propre :
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
> -   À partir de la configuration précédente, activez (supprimez #) ou désactivez (ajoutez #) les configurations répondent à votre machine/exigences

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
