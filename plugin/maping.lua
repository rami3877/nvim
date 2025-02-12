-- nvim maping
vim.keymap.set("n", "<A-k>", ":res +5<CR>")
vim.keymap.set("n", "<A-j>", ":res -5<CR>")
vim.keymap.set("n", "<A-l>", ":vertical resize-5<CR>")
vim.keymap.set("n", "<A-h>", ":vertical resize+5<CR>")
vim.keymap.set("n", "<C-f>", '<cmd>so %<cr>')
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")


-- lsp
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
vim.keymap.set("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
vim.keymap.set("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
vim.keymap.set("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
vim.keymap.set("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
-- move to using telescope
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>")
vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)

-- Neoformat
--vim.keymap.set("n", "<leader>fm", "<cmd>Neoformat<CR>")


-- CommentToggle
-- vim.keymap.set("n", "<leader>fc", ":CommentToggle<CR>")
-- vim.keymap.set("v", "<leader>fc", ":CommentToggle<CR>")

--NvimTreeToggle
vim.keymap.set("n", "tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "tr", ":NvimTreeRefresh<CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<F1>', builtin.oldfiles, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'gd', builtin.lsp_references, { desc = 'Telescope help tags' })
----vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fs', builtin.treesitter, { desc = 'Telescope help tags' })


-- harpoon

vim.keymap.set("n", "<leader>a", '<cmd>lua require("harpoon.mark").add_file()<cr>')
vim.keymap.set("n", "<leader>l", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
vim.keymap.set("n", "<leader>n", '<cmd>lua require("harpoon.ui").nav_next() <cr>')
vim.keymap.set("n", "<leader>b", '<cmd>lua require("harpoon.ui").nav_prev()<cr>')


-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

vim.keymap.set("n", "<leader>tc", "<cmd>Trouble diagnostics toggle focus=true <cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
-- tmux
vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")
vim.keymap.set("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>")
vim.keymap.set("n", "<leader>z", function() vim.fn.system("tmux resize-pane -Z") end, { noremap = true, silent = true })
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
