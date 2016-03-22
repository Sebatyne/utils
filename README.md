# Purpose of this repository

This repository contains a list of scripts and config files that I wrote for my own use.

I upload it here first to easily find whenever I will need them again, but also in the hope they can be useful to someone else

# Scripts

   * __no_ip.sh__ : this script will send you an email containing the public IP of the device on which it is run. Very useful if you have a server home (or a simple device as a raspberry pi), and don't want to suscribe to a no-ip service. Installation is very simple : adds a cron rule. This interesting thing in this script is that it will send you an email *only* if your address has changed.
   * __do_nat.sh__ : bash script to set up a NAT functionnality between 2 given network interfaces.
   * __ridof_cursor.py__ : move the cursor in a X window manager to remove it from sight, in the respect of the tiling window managers' philosophy.

# Configs

   * __apache_webdav_cors.conf__ and __nginx_webdav_cors.conf__ : config files for apache and nginx respectively, which allow to use CORS on webdav shares. They could be improved by using a variable saving the referer name, to allow CORS on every domain, and not only one specific hardcoded one.
   * __etc_network_interfaces__ and __wpa_supplicant.conf__ : allow a device to connect to a WEP Wifi network on boot. Used for my raspberry pi. The config to connect to a WPA network is easy to find, but it isn't for a WEP network.
   * __Jupyter Notebook__ : runs a Jupyter Notebook (http://jupyter.readthedocs.org/en/latest/index.html) instance behind an apache reverse proxy. Thanks to the proxy, the notebook is not directly accessible from the outside, and is protected by SSL + Basic Auth. Up to you to add new Jupyter kernels and develop in any language from any device.
