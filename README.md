# elecom-huge-trackball-linux-config

This is a configuration script for the Elecom Huge Wireless trackball that remaps some of the buttons and edits some props. Might work out of the box for the none wireless version too. I hightly doubt Elecom bothered to change anything.

This scripts dependancies are `xinput` `grep` and `sed` which should be installed on all distros by default.

There are comments in the script which should help you setup your own config.

Very similar to my [Kensington Expert Version](https://github.com/ArtiomSu/kensington-expert-trackball-linux-config)

# Layout

If you run the script as is without changing anything this will be your layout:

```txt
Left click -> Left click
Middle Click (Scoll wheel click) -> Fn1
Right click -> Right click
Scroll Wheel Up -> Scroll Wheel Up
Scroll Wheel Down -> Scroll Wheel Down
Scroll Wheel Side Down click -> Scroll Wheel Side Down click
Scroll Wheel Side Up click -> Scroll Wheel Side Up click
Back Click (on thumb cluster) -> Middle Click
Forward Click (on thumb cluster) -> Middle Click
Fn1 -> Back Click
Fn2 -> Forward Click
Fn3 -> Right Click
```

1. Ball acceliration will be disabled.
2. Original back click button + ball roll can also be used to scroll. ( very smooth and fast scrolling )

# Usage
You can run the script simpy by calling the script `./Elecom_Huge_Setup.sh` there is no need for root.

Or a better way is to put it in your desktop environment or window manager config, so that it runs when you login, the script also checks if the trackball is present before running any commands so its safe to use it like this.

I use i3 window manager so I put this in my i3 config `exec_always --no-startup-id ~/scrips/Elecom_Huge_Setup.sh`

# Video
[![Youtube](https://img.youtube.com/vi/_9O10F5uLnY/0.jpg)](https://www.youtube.com/watch?v=_9O10F5uLnY)
