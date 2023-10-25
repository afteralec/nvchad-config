local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "tailwindcss",
      },
    },
  },
  {
    "mhartington/formatter.nvim",
    ft = { "lua", "go" },
    cmd = { "Format", "FormatWrite" },
    config = function()
      require "custom.configs.formatter"
    end,
  },
}
return plugins
