d# Installation steps
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
- From your Klipper web UI add the content at the end of your printer.cfg (before SAVE_CONFIG section at the end) :
https://github.com/3dwork-io/3dwork-klipper-qidi/blob/8f9ae9970644369d1b3bdf7f6c5e72a331f8cb71/3dwork-klipper-qidi.cfg
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/d76922d3-47ee-42ae-acff-f5523b143298)
- From the previous config enable (removing #) or disable (adding #) the configurations that meets your machine/requirements... should be interesting if you enable our regular and shell macros :)
- PID Macros with parameters
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/98f7e7be-6e75-46e7-9da7-8c8d646fc478)
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/a8c4b5c0-959d-40b3-87b6-7f4965467680)
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/6cef6277-b344-40f1-b813-f911d17bc411)
- M600/Filament Management Macros with filament runout sensor management for QIDI printers
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/dc37f889-224a-4d7f-bd13-0ef105c46e5f)
- Shell Macros for Input Shaper, for XY and Belt tension, create the graph on an accessible folder from UI for easy download
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/4182f04b-2913-4c7e-becb-029bc3801e5d)
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/3191ec9f-6db6-40a6-b76e-814e6e860e78)
![image](https://github.com/3dwork-io/3dwork-klipper-qidi/assets/18049820/8859285b-4703-4398-a138-7a4ae643de54)




# Tasks List
- [x] Create Repository
- [x] Create base installer
- [x] Create QIDI X-Max 3 printer profile mods
- [x] CI - Update Gists
- [x] CI - Readme Automatic Translation
- [x] Added MCU temperature mod
- [x] Added manual bedleveling config
- [x] Added Klippain ShakeTune
- [x] Added Smart PID macros with temperature and fan speed selection and log/notification - PID_EXTRUDER / PID_BED / PID_ALL
- [ ] Added Smart M600 macros with filament management support, variables for custom setup and user macros to integrate third party actions (like led management, buzzer, etc...) - M600 / PAUSE_MACRO / _DISABLE_FS / UNLOAD_FILAMENT / PURGE_FILAMENT / _ENABLE_FS
