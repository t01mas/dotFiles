-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Keybinds para pesquisar centrado
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set(
  { "n", "v", "i", "c", "t", "x" },
  "<C-S-7>",
  "<C-/>",
  { remap = true, desc = "Traduzir Ctrl+_ para Ctrl+/" }
)

-- cxr: Abre split do Neovim, executa e apaga o .exe
vim.keymap.set("n", "<leader>cxr", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:t")
  local exe = vim.fn.expand("%:t:r") .. ".exe"
  vim.cmd("split | term cmd /c \"gcc " .. file .. " -o " .. exe .. " && .\\" .. exe .. " && del " .. exe .. "\"")
end, { desc = "C: Split terminal e apaga" })

-- cxk: Compila, executa em background, MANTÉM o .exe e não abre splits
vim.keymap.set("n", "<leader>cxk", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:t")
  local exe = vim.fn.expand("%:t:r") .. ".exe"
  vim.fn.system("cmd /c gcc " .. file .. " -o " .. exe .. " && .\\" .. exe)
end, { desc = "C: Silencioso e mantém .exe" })

-- cxp: Executa em background e mostra o output em popup/notificação (e apaga)
vim.keymap.set("n", "<leader>cxp", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:t")
  local exe = vim.fn.expand("%:t:r") .. ".exe"
  local cmd = "cmd /c gcc " .. file .. " -o " .. exe .. " && .\\" .. exe .. " && del " .. exe
  local output = vim.fn.system(cmd)
  print(output)
end, { desc = "C: Notificação/Pop-up e apaga" })

-- cxe: Abre janela externa do CMD, pausa para leitura e apaga
vim.keymap.set("n", "<leader>cxe", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:t")
  local exe = vim.fn.expand("%:t:r") .. ".exe"
  local cmd = 'start "" cmd /c "gcc ' .. file .. ' -o ' .. exe .. ' && .\\' .. exe .. ' && pause && del ' .. exe .. '"'
  vim.fn.system(cmd)
end, { desc = "C: CMD externo e apaga" })
