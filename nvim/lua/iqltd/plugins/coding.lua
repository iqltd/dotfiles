return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "erlang", "python", "sql", "java" },
				sync_install = false,
                highlight = { enable = true },
				indent = { enable = true },
				additional_vim_regex_highlighting = false,
			})
		end
	},

    {
        'stevearc/aerial.nvim',
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        config = function ()
            local aerial = require("aerial")
            aerial.setup({})
        end
    }
}
