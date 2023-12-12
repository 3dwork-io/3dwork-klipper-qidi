# Étapes d'installation

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

# Liste des tâches

-   [x] Créer un référentiel
-   [x] Créer un programme d'installation de base
-   [x] Créer des mods de profil d'imprimante QIDI X-Max 3
-   [x] CI - Mettre à jour l'essentiel
-   [x] CI - Traduction automatique Readme
-   [x] Ajouter un mod de température MCU
-   [x] Ajouter une configuration de mise à niveau manuelle
-   [x] Arad Klippain peut
-   [ ] Ajoutez des macros Smart M600 avec prise en charge de la gestion des filaments, des variables pour une configuration personnalisée et des macros utilisateur pour intégrer des actions tierces (comme la gestion des LED, le buzzer, etc...)
