vim.opt.colorcolumn = "80"

local autocmd_group_formatter =
  vim.api.nvim_create_augroup("FormatterAutoCommandGroup", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.lua", "*.go" },
  desc = "Auto-format on save",
  callback = function()
    vim.cmd ":Format"
  end,
  group = autocmd_group_formatter,
})
