-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

local default_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(function(err, res, ctx, config)
  if res and res.diagnostics then
    local filtered_diagnostics = {}
    for _, diag in ipairs(res.diagnostics) do
      if not string.match(diag.message, "Possible spelling issue") then
        table.insert(filtered_diagnostics, diag)
      end
    end
    res.diagnostics = filtered_diagnostics
  end
  default_handler(err, res, ctx, config)
end, {})
