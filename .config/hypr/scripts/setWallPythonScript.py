import os


file = os.listdir("../preloadedWallpaper/")

print(file)



f= open("~/.config/hypr/hyprpaper.conf","w")


f.close()

'''
preload = /home/void/stills/walls/wallhaven-gplwxe.jpg

wallpaper = eDP-1,/home/void/stills/walls/wallhaven-gplwxe.jpg
splash=false
ipc = off'''
