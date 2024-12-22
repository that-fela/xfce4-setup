# Update and Upgrade
sudo apt update && sudo apt upgrade -y

# Default Apps
sudo apt install -y \
    fish \
    micro \
    btop \
    guake \
    neofetch \
    curl \
    gtk2-engines-murrine \
    gtk2-engines-pixbuf

# Oh My Fish 
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
git clone https://github.com/that-fela/omf-config.git ~/.local/share/omf/themes/custom1
omf theme custom1

# Qogir
git clone https://github.com/vinceliuice/Qogir-theme.git
cd Qogir-theme
./install.sh
./install.sh --tweaks round -c dark -i manjaro
cd ..

# Qogir Icons
git clone https://github.com/vinceliuice/Qogir-icon-theme.git
cd Qogir-icon-theme
./install.sh
cd ..

# Set theme
xfconf-query -c xsettings -p /Net/ThemeName -s "Qogir-Round-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Qogir-Dark"