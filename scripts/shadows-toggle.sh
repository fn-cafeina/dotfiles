#!/bin/bash

xfconf-query -c xfwm4 -p /general/show_dock_shadow -s false
xfconf-query -c xfwm4 -p /general/show_popup_shadow -s false

xfconf-query -c xfwm4 -p /general/show_dock_shadow -s true
xfconf-query -c xfwm4 -p /general/show_popup_shadow -s true
