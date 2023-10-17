local M = {}
M.formatter = {
  n = {
    ["<leader>fmt"] = {
      "<cmd> Format <CR>",
      "Format the current file",
    },
    ["<leader>FF"] = {
      "<cmd> FormatWrite <CR>",
      "Format and write the current file",
    },
  },
}
return M
