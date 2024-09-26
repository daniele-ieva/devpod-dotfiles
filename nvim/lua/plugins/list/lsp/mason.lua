return {
    "williamboman/mason.nvim",
    dependencies = {
        { "williamboman/mason-lspconfig.nvim" },
        { "neovim/nvim-lspconfig" },
    },

    config = function()
        local mason = require("mason")
        local masonlsp = require("mason-lspconfig")
        local lspconfig = require("lspconfig")

        mason.setup()

        local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

        local default_setup = function(server)
            lspconfig[server].setup({
                capabilities = lsp_capabilities,
            })
        end

        masonlsp.setup({
            ensure_installed = {
                "lua_ls",
                "jdtls",
            },
            handlers = {
                default_setup,
                jdtls = function(server) end,
            },
            automatic_installation = true,
        })
    end,
}
