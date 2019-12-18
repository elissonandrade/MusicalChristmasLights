# MusicalChristmasLights
A IoT project to control christmas lights to follow the rhythm of a music

This project runs in a ESP26 board, which always reads the init.lua file first.
The init.lua file is responsible for connecting to a local wireless network.
It reads the SSID and the password from said network from a lua file not included in this repository, named login.lua.
To connect to you local wireless network, simple create your own login.lua file, and define a global variable SSID with the ssid of the wi-fi network and
another global variable SENHA with the password of the wifi.

The select.lua file creates the web server where the music support are listed. Rigth now, only one music is officially supported,
that music being black sheep. You can include you own musics, and reuse some functions to create you own rythim light.
