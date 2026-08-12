# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

---

## 🛠️ MATLAB Language Server (Linux)

O setup do `matlab-ls` está em `lua/plugins/matlab.lua`. Por padrão:

```lua
cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/matlab-language-server"), "--stdio" },
...
installPath = "/usr/local/MATLAB/R2025b",
```

- **Instale o matlab-ls via Mason**: dentro do Neovim execute `:MasonInstall matlab-language-server`.
- **Ajuste o `installPath`** em `lua/plugins/matlab.lua:11` para o caminho da sua instalação do MATLAB. Exemplo:
  ```lua
  installPath = "/usr/local/MATLAB/v99",  -- Windows: "C:\\Program Files\\MATLAB\\R2024b"
  ```
- Se você **não usa MATLAB**, basta deletar (ou renomear) o ficheiro `lua/plugins/matlab.lua` para desativar o plugin.
