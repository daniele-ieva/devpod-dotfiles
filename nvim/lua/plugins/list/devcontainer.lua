return {
  'https://codeberg.org/esensar/nvim-dev-container',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = function ()
      require("devcontainer").setup({
          attach_mounts = {
            neovim_config = {
                enabled = true,
                options = { "readonly" },
            },
          },
      })
  end
}
