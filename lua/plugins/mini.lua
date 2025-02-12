local function setcomment()
	require('mini.comment').setup {
		mappings = {
			-- Toggle comment (like `gcip` - comment inner paragraph) for both
			-- Normal and Visual modes
			comment = '<leader>fc',
			-- Toggle comment on current line
			comment_line = '<leader>fc',
			-- Toggle comment on visual selection
			comment_visual = '<leader>fc',
			textobject = 'gc',
		},
	}
end

local function setup()
	local statusline = require 'mini.statusline'
	local icons = require('mini.icons')
	icons.setup { style = 'glyph' }
	statusline.setup { use_icons = true }
end




return {
	{
		'echasnovski/mini.nvim',
		version = '*',
		config = function()
			setcomment()
			setup()
			-- require('mini.completion').setup()
			require('mini.pairs').setup()
		end, --end of func
	}

}
