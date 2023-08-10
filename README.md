 #####                              #     #          
#     #  ####  #        ##   #####  #     # # #    # 
#       #    # #       #  #  #    # #     # # ##  ## 
 #####  #    # #      #    # #    # #     # # # ## # 
      # #    # #      ###### #####   #   #  # #    # 
#     # #    # #      #    # #   #    # #   # #    # 
 #####   ####  ###### #    # #    #    #    # #    # 

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
In this example, we will use Ubuntu. I will show more Distros later down the line.

- sudo apt-get install ninja-build gettext cmake unzip curl

Install nvim >= 0.9
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout release-0.9
make CMAKE_BUILD_TYPE=Release
sudo make install
