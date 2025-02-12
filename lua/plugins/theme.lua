return {
    {
	'Shatur/neovim-ayu', 
	enabled = true,
	config = function()

			 require('ayu').setup({
						mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
						terminal = false, -- Set to `false` to let terminal manage its own colors.
						overrides = {
								 Normal = { bg = "None" },
								 NormalFloat = { bg = "none" },
								 ColorColumn = { bg = "none" },
								 SignColumn = { bg = "None" },
								 Folded = { bg = "None" },
								 FoldColumn = { bg = "None" },
								 CursorLine = { bg = "None" },
								 CursorColumn = { bg = "None" },
								 VertSplit = { bg = "None" },
						},
			 })

			 vim.cmd.colorscheme("ayu-dark")
			 vim.o.termguicolors = true
			 vim.cmd'colorscheme ayu-dark'
	end,
		}
}
