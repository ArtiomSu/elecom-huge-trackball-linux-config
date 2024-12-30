#!/usr/bin/env bash

# Default layout got using xev
# 1 -> Left click
# 2 -> Middle Click (Scoll wheel click)
# 3 -> Right click
# 4 -> Scroll Wheel Up
# 5 -> Scroll Wheel Down
# 6 -> Scroll Wheel Side Down click
# 7 -> Scroll Wheel Side Up click
# 8 -> Back Click (on thumb cluster)
# 9 -> Forward Click (on thumb cluster)
# 10 -> Fn1
# 11 -> Fn2
# 12 -> Fn3

# My Moddified layout mapping

# 1 : 1 -> Left click
# 2 : 10 -> Middle Click (Scoll wheel click)
# 3 : 3 -> Right click
# 4 : 4 -> Scroll Wheel Up
# 5 : 5 -> Scroll Wheel Down
# 6 : 6 -> Scroll Wheel Side Down click
# 7 : 7 -> Scroll Wheel Side Up click
# 8 : 2 -> Back Click (on thumb cluster)
# 9 : 2 -> Forward Click (on thumb cluster)
# 10 : 8 -> Fn1
# 11 : 9 -> Fn2
# 12 : 3 -> Fn3

# thereby if you take the second mapped number into the list, it looks like this
# 1 10 3 4 5 6 7 2 2 8 9 3

mouse_name="Getech HUGE TrackBall"

check=$(xinput | grep "$mouse_name")

if [[ ! -z "$check" ]]; then
	# Note Elecom uses the same names for both outputs, usually the first output should be the correct one, but if its not, then you will need to update this.
	mouse_id=$(xinput | grep "$mouse_name" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/' | head -1)
	echo "mouse id is $mouse_id make sure this is correct"
	#echo "mouse id is $mouse_id"
	# swap right and back button then swap middle and back button
	xinput set-button-map $mouse_id 1 10 3 4 5 6 7 2 2 8 9 3
	# enable different type of scrolling
	xinput set-prop $mouse_id "libinput Natural Scrolling Enabled" 0
	# disable acceliration for the ball
	xinput set-prop $mouse_id "libinput Accel Profile Enabled" 0, 1

	# allow scrolling by holding middle mouse button and using the ball to scroll ( really smooth and fast ). 
	xinput set-prop $mouse_id "libinput Scroll Method Enabled" 0, 0, 1
	# allow the remmaped middle mouse to be used for middle mouse scroll
	# Note must be the original button
	xinput set-prop $mouse_id "libinput Button Scrolling Button" 8
fi

# Default properties, so if you change yours around alot you can refer here for default config.
# xinput list-props
# Device 'Getech HUGE TrackBall':
# 	Device Enabled (193):	1
# 	Coordinate Transformation Matrix (195):	1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
# 	libinput Natural Scrolling Enabled (325):	0
# 	libinput Natural Scrolling Enabled Default (326):	0
# 	libinput Scroll Methods Available (330):	0, 0, 1
# 	libinput Scroll Method Enabled (331):	0, 0, 0
# 	libinput Scroll Method Enabled Default (332):	0, 0, 0
# 	libinput Button Scrolling Button (333):	2
# 	libinput Button Scrolling Button Default (334):	2
# 	libinput Button Scrolling Button Lock Enabled (335):	0
# 	libinput Button Scrolling Button Lock Enabled Default (336):	0
# 	libinput Middle Emulation Enabled (337):	0
# 	libinput Middle Emulation Enabled Default (338):	0
# 	libinput Rotation Angle (308):	0.000000
# 	libinput Rotation Angle Default (309):	0.000000
# 	libinput Accel Speed (339):	0.000000
# 	libinput Accel Speed Default (340):	0.000000
# 	libinput Accel Profiles Available (341):	1, 1, 1
# 	libinput Accel Profile Enabled (342):	1, 0, 0
# 	libinput Accel Profile Enabled Default (343):	1, 0, 0
# 	libinput Accel Custom Fallback Points (344):	<no items>
# 	libinput Accel Custom Fallback Step (345):	0.000000
# 	libinput Accel Custom Motion Points (346):	<no items>
# 	libinput Accel Custom Motion Step (347):	0.000000
# 	libinput Accel Custom Scroll Points (348):	<no items>
# 	libinput Accel Custom Scroll Step (349):	0.000000
# 	libinput Left Handed Enabled (350):	0
# 	libinput Left Handed Enabled Default (351):	0
# 	libinput Send Events Modes Available (310):	1, 0
# 	libinput Send Events Mode Enabled (311):	0, 0
# 	libinput Send Events Mode Enabled Default (312):	0, 0
# 	Device Node (313):	"/dev/input/event25"
# 	Device Product ID (314):	1390, 284
# 	libinput Drag Lock Buttons (327):	<no items>
# 	libinput Horizontal Scroll Enabled (328):	1
# 	libinput Scrolling Pixel Distance (352):	15
# 	libinput Scrolling Pixel Distance Default (353):	15
# 	libinput High Resolution Wheel Scroll Enabled (329):	1
