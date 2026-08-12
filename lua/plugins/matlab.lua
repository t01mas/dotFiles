return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        matlab_ls = {
          cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/matlab-language-server"), "--stdio" },
          filetypes = { "matlab" },
          settings = {
            matlab = {
              installPath = "/usr/local/MATLAB/R2025b",
              telemetry = false,
            },
          },
        },
      },
    },
  },
}
