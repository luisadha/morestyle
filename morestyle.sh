#!/usr/bin/bash
# !Jangan lupa termux-fix-shebang
# Nama: Simulasi Termux Menu bagian Style
# Dekripsi: Jika Menu pada termux divisualisasikan sebagai skrip maka akan seperti ini
# Dependensi: Anda mungkin perlu menginstall Termux-Styling
# Kreator skrip ini @luisadha
# Plugin: Ditujukan untuk penggunaan Mytermux 

banner() {
  echo "Please install 3rd-party dotfiles myTermux first!"
  echo
  echo "Simulation Termux Menu (Style)"
  echo
  echo "Version: 1.0"
  echo "Author: luisadha"
}

while true; do
  banner

  select menu in "CHOOSE COLOR" "CHOOSE FONT"; do
    [[ -n $menu ]] || { break; }

    case $menu in
      "CHOOSE COLOR")
        echo "You selected CHOOSE COLOR"
        sleep 1
     bash ~/.scripts/colorscheme/colors.sh
        # Tambahkan perintah yang ingin dijalankan saat memilih CHOOSE COLOR
        read -t 0.1
        continue
        ;;
      "CHOOSE FONT")
        echo "You selected CHOOSE FONT"
        sleep 1
        bash ~/.scripts/fonts/fonts.sh
        # Tambahkan perintah yang ingin dijalankan saat memilih CHOOSE FONT
        read -t 0.1
        continue
        ;;
    esac
  done

  # Keluar dari loop saat pengguna menekan tombol Enter
  break
done
