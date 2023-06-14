# swayyconfig
A sway config to get you started

## Motive
Suppose you have installed sway for the first time, wouldn't it be helpful if you had pre-made config file which sets you up with a basic config? Most users use the i3 config, but certain scripts and tools that work in i3 do not work well with sway. This config file is to kickstart your sway journey with a few configs and some really helpful scripts.

## Pre-Requisites
First one is fairly obvious, you need to have sway installed. \
Secondly have Dunst, playerctl. \
awk, grep and acpi should be pre-installed in most Linux distros

## Installation

Type this command in to your shell
```
git clone https://github.com/gitrospective/swayyconfig ~/.config/sway/
```
## Configuration
Your config basically consists of a config file which is the heart of your config. 
You also have a Scripts directory to run your custom scripts and a wallpaper folder to set your wallpapers.

You can add your own custom scripts to the scripts file

Inoder to create your own custom keybindings, use **bindsym** and **exec**  as follows:
```
bindsym $mod+a exec /path/to/file   # this means that when $mod+a is pressed the file in the corresponding path is executed.
```
You can also use **bindcode** to achieve a similar functionality if you do not know the key name
```
bindcode 231 exec /path/to/file # this corresponds to the F11 key but without pressing the Fn key to execute the corresponding file.
```
## Keycodes (X_86)
bindcode 121 - F1(without Fn)
bindcode 198 - F4(without Fn)
bindcode 235 - F7(without Fn)
bindcode 246 - F8(without Fn)
bindcode 224 - F9(without Fn)
bindcode 226 - F10(without Fn)
bindcode 231 - F11(without Fn)
bindcode 164 - F12(without Fn)

rest can be found using tools like xev
