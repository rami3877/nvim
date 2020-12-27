# nvim

# setp 1 :
          sudo pacman -S python-pynvim neovim
          su 
          curl -sL install-node.now.sh/lts | bash
          exit
          sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
     
# setp2 open init.vim:
                      :so %
                      :PlugInstall 
                      :CocInstall coc-json coc-tsserver  coc-snippets   coc-marketplace
                      :CocConfig
                      
# setp open like :
                   https://www.chrisatmachine.com/Neovim/04-vim-coc/
                   :CocList marketplace
                   mkdir -p ~/.config/nvim/undo
# for change the format output of lexima.vim :
                   nvim ~/.config/nvim/plugg/lexima.vim/autoload/lexima.vim
                   :39
