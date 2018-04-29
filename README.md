# rofi-jarvis-bridge

Integrates jarvis directly into rofi, for all of your needs.

## Requirements

You must have a shell installed. [Jarvis][jarvis] must also be installed.

## Setup

Modify the command that starts up rofi:

``` config
bindsym $mod+d exec "rofi -modi window,run,jarvis:~/<project-directory>/rofi-jarvis.sh -show run
```

The above config is for i3wm, binding the shortcut <kbd>Win+d</kbd> to run
rofi. `<project-directory>` points to the directory that this file is in.

[jarvis]: https://github.com/sukeesh/Jarvis
