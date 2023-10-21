local M = {}
M.formatter = {
  n = {
    ["<leader>f"] = {
      "<cmd> Format <CR>",
      "Format the current file",
    },
    ["<leader>F"] = {
      "<cmd> FormatWrite <CR>",
      "Format and write the current file",
    },
  },
}
return M
