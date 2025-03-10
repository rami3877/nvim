local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

require("option")



require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{
			"christoomey/vim-tmux-navigator",
			cmd = {
				"TmuxNavigateLeft",
				"TmuxNavigateDown",
				"TmuxNavigateUp",
				"TmuxNavigateRight",
				"TmuxNavigatePrevious",
				"TmuxNavigatorProcessList",
			},
			keys = {
				{ "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
				{ "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
				{ "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
				{ "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
				{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
			},
		},
		{ "ThePrimeagen/harpoon",        dependencies = { { "nvim-lua/plenary.nvim" } } },
		{ "nvim-tree/nvim-web-devicons", opts = {} },
		{
			"test_python",
			dir = "~/.config/nvim/my_plugin/test_python",
			config = function()
				local test_python = require("test_python")
				-- test_python.run()
			end,
		},
	},
	install = { colorscheme = { "ayu-dark" } },
})
