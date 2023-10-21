local formatter = require "formatter"

formatter.setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    go = {
      require("formatter.filetypes.go").gofumpt,
      require("formatter.filetypes.go").golines,
      function()
        return {
          exe = "goimports-reviser -rm-unused -set-alias -format ./...",
          stdin = true,
        }
      end,
    },
  },
}
