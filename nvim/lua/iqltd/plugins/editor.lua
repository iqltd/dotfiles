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
            telescope.load_extension("aerial")
			vim.keymap.set("n", "<leader><space>", "<cmd>Telescope find_files<cr>", { desc = "Find files in cwd" })
			vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
			vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Find git files in cwd" })
			vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })

			vim.keymap.set("n", "<leader>s/", "<cmd>Telescope live_grep<cr>", { desc = "Search string in cwd" })
			vim.keymap.set("n", "<leader>sc", "<cmd>Telescope grep_string<cr>", { desc = "Search string under cursor in cwd" })
			vim.keymap.set("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "Search help tags" })
			vim.keymap.set("n", "<leader>sn", "<cmd>Telescope notify<cr>", { desc = "Search notifications" })
            vim.keymap.set("n", "<leader>sr", "<cmd>Telescope lsp_references<cr>", { desc = "Search references" })
			vim.keymap.set("n", "<leader>ss", "<cmd>Telescope aerial<cr>", { desc = "Search symbols" })


			vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })

		end,
	},

	{
		"folke/zen-mode.nvim",
		config = function()
			vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode)
		end,
	},

	{

		"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	},

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },

}
