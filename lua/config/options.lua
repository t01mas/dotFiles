-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.spelllang = { "pt" }
vim.opt.shiftwidth = 6 -- Define o tamanho da indentação para 4
vim.opt.tabstop = 6 -- Define o tamanho visual do caractere TAB para 4
vim.opt.expandtab = true -- Converte a tecla TAB em espaços (muda para false se quiseres inserir o caractere TAB real)
vim.g.autoformat = false -- Desliga o auto formato do vim por estar a usar autosave
