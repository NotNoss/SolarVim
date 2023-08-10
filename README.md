# SOLARVIM 

SolarVim (svim) is a neovim layer that replaces the default nvim config. This adds more features then what neovim has out of the box.

PLEASE NOTE: This program replaces the neovim config so by typing nvim, it opens SolarVim. We have plans to change this in the future and use svim instead but for now that is how it runs. If you decide you no longer want SolarVim, please see the uninstall steps below to go back to your normal neovim configuration.

## Install Instructions
Install the prerequisites below before proceeding

Remove or rename ~/.local/share/nvim/
- sudo rm -r ~/.local/share/nvim/
- mv ~/.local/share/nvim/ ~/.local/share/nvim.bak

Remove or rename ~/.local/share/nvim/
- sudo rm -r ~/.config/nvim/
- vm ~/.config/nvim/ ~/.config/nvim.bak

Clone Repository
- git clone git@github.com:NotNoss/SolarVim.git ~/.config/nvim/

Run nvim
- nvim

## Prerequisites
Follow all steps below to get the rerequisites and nvim. Not all distros have been tested so please open an issue if there is an issue with your distro and I will test it. If you have already tested your distro, please feel free to submit a pull request to add your Distro to the list with the proper steps to get it running.

### Ubuntu
- sudo apt-get install ninja-build gettext cmake unzip curl

### CentOS/RHEL/Fedora
- sudo dnf -y install ninja-build cmake gcc make unzip gettext curl gcc-c++

Install nvim >= 0.9
- git clone https://github.com/neovim/neovim.git
- cd neovim
- git checkout release-0.9
- make CMAKE_BUILD_TYPE=Release
- sudo make install

## Uninstall SolarVim
Uninstalling SolarVim will return you to the default neovim configuration.

- sudo rm -r ~/.config/nvim/
- sudo rm -r ~/.local/share/nvim/
- nvim
