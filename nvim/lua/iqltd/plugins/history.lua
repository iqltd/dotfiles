return {
	
 	{
		"mbbill/undotree",
		config = function() 
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},

	{
		"tpope/vim-fugitive",
		config = function() 
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
			vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
		end,
	},
}
