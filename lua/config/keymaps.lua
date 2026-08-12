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
