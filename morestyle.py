#!/usr/bin/env python3
# !Jangan lupa chmod +x
# Nama: Simulasi Termux Menu bagian Style (Python)
# Dekripsi: Jika Menu pada Termux divisualisasikan sebagai skrip maka akan seperti ini
# Dependensi: Anda mungkin perlu menginstall Termux-Styling
# Kreator skrip ini @luisadha
# Plugin: Ditujukan untuk penggunaan Mytermux


import os
import time

def banner():
    print("Please install 3rd-party dotfiles myTermux first!\n")
    print("Simulation Termux Menu (Style)\n")
    print("Version: 1.0")
    print("Author: luisadha\n")

while True:
    banner()

    print("1) CHOOSE COLOR")
    print("2) CHOOSE FONT")
    print("0) EXIT")

    try:
        choice = int(input("\nSelect an option: ").strip())
    except ValueError:
        continue

    if choice == 1:
        print("You selected CHOOSE COLOR")
        time.sleep(1)
        os.system("bash ~/.scripts/colorscheme/colors.sh")
    elif choice == 2:
        print("You selected CHOOSE FONT")
        time.sleep(1)
        os.system("bash ~/.scripts/fonts/fonts.sh")
    elif choice == 0:
        break
