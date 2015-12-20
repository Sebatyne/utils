#!/usr/bin/python

# Move the cursor of your X window system out of sight
# (in the middle, down of the screen)
# It uses the low level python Xlib.

from Xlib import X, display

d = display.Display()
s = d.screen()
root = s.root
root.warp_pointer(s['width_in_pixels']/2 , s['height_in_pixels'])
d.sync()
