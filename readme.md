# Installation steps
- Login using SSH client to your QIDI printer
- Execute this command to access klipper_config path
```
cd ~/klipper_config/
```
- Clone 3Dwork Klipper Bundle - QIDI Edition
```
git clone https://github.com/3dwork-io/3dwork-klipper-qidi.git
```
> [!WARNING]
> Only needed first time on clean installation:
> - Execute this command to access bundle scripts folder
> ```
> cd /home/mks/klipper_config/3dwork-klipper-qidi/scripts/
> ```
> - Launch installer
> ```
> ./3dwork-install.sh
> ```
- From your Klipper web UI add this line to the end of your moonraker.conf config file:
```
[include 3dwork-klipper-qidi/moonraker.conf]
```

# Tasks List
- [x] Create Repository
- [x] Create base installer
- [x] Create QIDI X-Max 3 printer profile mods
- [x] Add MCU temperature mod
- [x] Add manual bedleveling config
- [x] Add Klippain ShakeTune
- [ ] Add Smart M600 macros with filament management support, variables for custom setup and user macros to integrate third party actions (like led management, buzzer, etc...)
