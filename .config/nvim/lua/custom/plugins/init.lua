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
		require('onedark').setup {
			-- toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
			toggle_style_list = { 'dark', 'light' }, -- List of styles to toggle between
			toggle_style_key = '<space>ts',
		},
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
			vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
			require('neo-tree').setup {}
		end,
	},
}
