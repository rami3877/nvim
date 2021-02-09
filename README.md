# nvim

# setp 1 :
          sudo pacman -S python-pynvim neovim ctags git 
          sudo npm i -g yarn  
          su 
          curl -sL install-node.now.sh/lts | bash
          exit
          
          sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
         
          mkdir ~/.config/nvim  -p
          cd ~/.config/nvim
          git clone https://github.com/rami3877/nvim.git
          export PATH=/home/rami/.gem/ruby/2.7.0/bin:$PATH   
   # to enable python2 & python3 for neovim  in archlinux 
                    yay -S python2-pip 
                    sudo pacman -S python2
                    mkdir ~/.local/bin -p
                    ln -s /usr/bin/python2 ~/.local/bin/python2
                    ln -s /usr/bin/python2-config ~/.local/bin/python2-config
                    python3 -m pip install --user --upgrade pynvim 
                    python2 -m pip install --user --upgrade pynvim 
                    pip install jedi    
#  open init.vim:
                      nvim init.vim
                      :so %
                      :PlugInstall 
                      :CocInstall coc-json coc-tsserver  coc-snippets   coc-marketplace coc-vimlsp
                      :CocConfig
                      
# More information about coc open like :
                   https://www.chrisatmachine.com/Neovim/04-vim-coc/
# To download for language server extension  & Snippets extension for coc.nvim
                   :CocList marketplace
               
# for change the format output of lexima.vim :
                   nvim ~/.config/nvim/plugg/lexima.vim/autoload/lexima.vim
                   :39
# wordes 
          h coc-highlights
