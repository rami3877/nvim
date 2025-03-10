---@diagnostic disable: empty-block, trailing-space
return {
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{ 'saghen/blink.cmp' },
		},
		config = function()
			local cap = require('blink.cmp').get_lsp_capabilities()

			require("lspconfig").pyright.setup {
				capabilities = cap
			}

			require("lspconfig").lua_ls.setup { capabilities = cap }

			require("lspconfig").clangd.setup {
				capabilities = cap
			}

			require 'lspconfig'.sqls.setup {
				capabilities = cap,
				on_attach = function(client, bufnr)
					require('sqls').on_attach(client, bufnr) -- require sqls.nvim
				end,
			}
			require 'lspconfig'.gopls.setup { capabilities = cap }
			require 'lspconfig'.rust_analyzer.setup {
				settings = {
					['rust-analyzer'] = {
						diagnostics = {
							enable = false,
						}
					}
				},
				capabilities = cap

			}

			vim.diagnostic.enable(not vim.diagnostic.is_enabled())
			-- vim.api.nvim_create_autocmd('LspAttach', {
			-- 	callback = function(args)
			-- 		local client = vim.lsp.get_client_by_id(args.data.client_id)
			-- 		if not client or vim.fn.expand("%:e") == "sql" then return end
			-- 		if client.supports_method('textDocument/formatting') then
			-- 			vim.api.nvim_create_autocmd('BufWritePre', {
			-- 				buffer = args.buf,
			-- 				callback = function()
			-- 					vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
			-- 				end,
			-- 			})
			-- 		end
			-- 	end
			-- })
		end,
	},

}
