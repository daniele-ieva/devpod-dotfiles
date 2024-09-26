return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "jsonc" },
                auto_install = true,
                sync_install = false,
                ignore_install = {},
                modules = { "nvim-treesitter/nvim-treesitter-refactor" },
            })
            require("nvim-treesitter").setup()
        end,
    },
}
