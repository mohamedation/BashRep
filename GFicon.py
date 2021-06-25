#!/usr/bin/python
import subprocess
import os
#   By: mohamedation
#       mohamedation.com
#   License: GPL-3.0-or-later
#   GFicon: Gnome Folder icon is a python script that looks for
#           folders in the current working directory, and set their
#           icons using a png image if it is inside the respective folder
#           and named ".folder.png"       

dr = os.getcwd()

for root, dirs, files in os.walk(dr):
    for directory in dirs:
        folder = os.path.join(root, directory)
        if os.path.isfile(folder+"/.folder.png"):
            try:
                first = folder+"/.folder.png"
            except ValueError:
                pass
            else:
                subprocess.Popen([
                    "gio", "set", "-t", "string",
                    os.path.abspath(folder), "metadata::custom-icon",
                    "file://"+os.path.abspath(os.path.join(folder, first))
                    ])