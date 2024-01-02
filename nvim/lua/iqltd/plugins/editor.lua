return {

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = { }
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			'nvim-lua/plenary.nvim',
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
            "nvim-tree/nvim-web-devicons",
		},
		config = function()
            local telescope = require("telescope")
            telescope.load_extension("fzf")
			vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files in cwd" })
			vim.keymap.set("n", "<leader>f/", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
			vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
			vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
			vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help tags" })
			vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		end,
	},

	{
		"folke/zen-mode.nvim",
		config = function()
			vim.keymap.set("n", "<leazer>z", vim.cmd.ZenMode)
		end,
	},

	{

		"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	},




}
