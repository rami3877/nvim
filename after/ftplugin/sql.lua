--[[
       tmux lsp | sed -e '/(active)/d'  -e  's/\([0-9]\):.*/\1/'
--]]


vim.api.nvim_get_current_line()

vim.fn.system("tmux send-keys -t 1 'ls' Enter")
