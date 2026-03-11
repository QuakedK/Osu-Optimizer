# Osu! Optimizer
The all-in-done, easy & simple Osu tool. This simple and user friendly bat will disable Fullscreen Optimizations, Set the Graphics Preference to high, Set Osu to High Priority. It also includes a Custom Nvidia OSU Nip, and various other things in the extras section.

<img width="977" height="510" alt="image" src="https://github.com/user-attachments/assets/2afe3ce0-76ff-4863-8023-e0b4afbbdec5" />

![GitHub Release Downloads](https://img.shields.io/github/downloads/QuakedK/Osu-Optimizer/total) 

# Usage

1. Download [Osu Optimizer](https://github.com/QuakedK/Osu-Optimizer/releases/download/OSU/OSU-Optimizer-V1.0.bat).
2. Right-click & run it as admin, and almost everything else is automatic, except user-required inputs.

# Nvidia OSU Nip?
The Osu Optimizer includes an option to download Nvidia Profile Inspector and Custom OSU Nip, that increases the performance of Osu.

```
Power Management Mode: Perfer Maximum Performance
Texture Filtering Quality: High Performance
Threaded Optimization: ON
Low Latency Mode: Ultra
```

> [!NOTE]
> The most significant part of the Nvidia Custom OSU Nip is actually ```Threaded Optimization```, which can drastically reduce OSU latency.
> However on Osu! Stable It will actively revert the changes made to threaded optimization, turning it off every time you re-open osu!.

# How to prevent Osu! from turning off Threaded Optimization?
Osu will automatically turn off ```Threaded Optimization```, when restarting/re-opening Osu regardless of what you do.
So the only workaround would be tediously re-enabling threaded optimization. However, we can automate or make this process much easier by downloading [Nip Import](https://github.com/QuakedK/Osu-Optimizer/blob/main/Downloads/Nip%20Import.bat) and running it before re-opening Osu but after restarting Osu.

[Nip Import](https://github.com/QuakedK/Osu-Optimizer/blob/main/Downloads/Nip%20Import.bat) | Very lightweight bat that downloads Nvidia Profile Inspector and the Custom OSU Nip and imports it siently with no console!

[Nip Import (ON STARTUP)](https://github.com/QuakedK/Osu-Optimizer/blob/main/Downloads/Nip%20Import%20(ON%20STARTUP).bat) | The same as the regular version, however this version adds itself to the startup, so every time you restart your computer, it will open in the background and import the NIP.

> [!WARNING]
> If you download and run [Nip Import (ON STARTUP)](https://github.com/QuakedK/Osu-Optimizer/blob/main/Downloads/Nip%20Import%20(ON%20STARTUP).bat), Do not delete it after, because It obviously cannot open on startup if it no longer exists. Also do not move the NIP import bat to a different path or directory as the script gets the current path of the batch file and uses that for the startup reg key, so if it is moved, it will no longer work on startup.
