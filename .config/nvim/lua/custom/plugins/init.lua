-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information


-- Organize go imports on write
-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim-imports
return {
	{
		-- Put cursor at last place
		'ethanholz/nvim-lastplace',
		config = function()
			require('nvim-lastplace').setup {}
		end,
	},
	{
		require('NeoSolarized').setup {
			style = "dark", -- "dark" or "light"
			transparent = false, -- true/false; Enable this to disable setting the background color
		}
	},
	{
		'phaazon/hop.nvim',
		branch = 'v2',
		config = function()
			local hop = require('hop')
			local directions = require('hop.hint').HintDirection
			hop.setup {}
			vim.keymap.set('', '<leader>f', function()
				hop.hint_words({ direction = directions.AFTER_CURSOR })
			end, { remap = true, desc = '[f] Hop forward' })
			vim.keymap.set('', '<leader>F', function()
				hop.hint_words({ direction = directions.BEFORE_CURSOR })
			end, { remap = true, desc = '[F] Hop backward' })
		end
	},
	{
		'nvim-neo-tree/neo-tree.nvim',
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			-- Unless you are still migrating, remove the deprecated commands from v1.x
			vim.keymap.set('n', '<leader>t', '<Cmd>Neotree toggle<CR>', { desc = '[t] Toggle NeoTree' })
			vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
			require('neo-tree').setup {}
		end,
	},
	{
		'zbirenbaum/copilot.lua',
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({})
		end,
	},
	{
		"kcl-lang/vim-kcl",
		init = function()
			vim.api.nvim_command([[autocmd BufRead,BufNewFile *.k set filetype=kcl]])
		end,
		ft = {
			"kcl",
		},
	}
}
