# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

---

## 📦 Pré-requisitos

### Windows
- **Git** (https://git-scm.com/download/win)
- **PowerShell 7**
  ```powershell
  winget install --id Microsoft.PowerShell --source winget
  ```
- **Windows Terminal** (recomendado)
  ```powershell
  winget install --id Microsoft.WindowsTerminal -e --source winget
  ```

### Linux
- **Git** + **build tools** + **ripgrep** + **unzip**
  ```bash
  sudo pacman -S git base-devel ripgrep unzip   # Arch
  sudo apt install git build-essential ripgrep unzip # Ubuntu/Debian
  ```

---

## 🚀 Instalar o Neovim

> Requer **Neovim >= 0.10**. Verifique com `nvim --version`.

### Windows
```powershell
winget install --id Neovim.Neovim -e --source winget
```

### Linux
```bash
sudo pacman -S neovim   # Arch
sudo apt install neovim  # Ubuntu/Debian (use um PPA mais recente se a versão for antiga)
```

---

## 📥 Importar esta config

### Windows
```powershell
git clone https://github.com/LazyVim/starter $env:LOCALAPPD\nvim
```

### Linux
```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

> Se já tem config em `~/.config/nvim`, remova ou renomeie-a primeiro.

---

## 🔤 Instalar Nerdfonts

Usamos **MartianMono Nerd Font** (pode trocar por JetBrainsMono, FiraCode, etc).

### Windows
1. Baixe em https://www.nerdfonts.com/font-downloads (ex: `MartianMono.zip`)
2. Extraia o `.zip`
3. **Clique com o botão direito** em cada `.ttf` → **Install for all users**
4. Abra **Windows Terminal** → seta para baixo → **Settings**
5. Selecione o perfil **PowerShell 7** → **Appearance → Font face** → digite: `MartianMono Nerd Font`
6. Salve e abra uma nova aba para confirmar

### Linux
```bash
sudo mkdir -p /usr/local/share/fonts
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/MartianMono.zip
unzip MartianMono.zip -d MartianMono
sudo cp MartianMono/*.ttf /usr/local/share/fonts/
sudo fc-cache -fv
```
Configure seu terminal para usar `MartianMono Nerd Font`.

---

## 📁 Ícones de pasta no PowerShell

### Instalar o Terminal-Icons
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force
Install-Module PowerShellGet -Force -AllowPrerelease
Import-Module PowerShellGet
Install-PSResource -Name Terminal-Icons -TrustRepository
Import-Module Terminal-Icons
```

### Carregar automaticamente ao iniciar (e rápido)
Abra o perfil:
```powershell
notepad $PROFILE
```
Adicione ao final do ficheiro:
```powershell
Import-Module Terminal-Icons
```
Salve e reinicie o PowerShell.

---

## ▶️ Primeira execução

Abra o Neovim:
```bash
nvim
```
Na primeira vez:
- **lazy.nvim** é instalado automaticamente (`~/AppData/Local/nvim-data/lazy/lazy.nvim` no Windows, `~/.local/share/nvim/lazy/lazy.nvim` no Linux).
- Todos os plugins de `lua/plugins/` são instalados. Aguarde `Press ENTER to continue`.
- Para forçar sincronização: `:Lazy sync`

---

## 🎨 Plugins principais

| Plugin | Função |
|---|---|
| `LazyVim/LazyVim` | Base (v8) |
| `nvim-lualine/lualine.nvim` | Statusline |
| `nvim-tree/nvim-web-devicons` | Ícones de ficheiro/pasta |
| `nvim-telescope/telescope.nvim` | Fuzzy finder |
| `nvim-treesitter/nvim-treesitter` | Highlighting avançado |
| `neovim/nvim-lspconfig` + `mason.nvim` | LSP (TypeScript, Python, Docker, LaTeX) |
| `supermaven-nvim` (extra) | IA de autocomplete |
| `lervag/vimtex` | Suporte a LaTeX |
| `Pocco81/auto-save.nvim` | Auto-save |

### Extras (`lazyvim.json`)
`ai.supermaven` · `lang.docker` · `lang.python` · `lang.tex` · `lang.typescript`

---

## ⚙️ Customizações desta config

### `init.lua`
- `vim.opt.clipboard = "unnamedplus"` (clipboard global)
- Filtra mensagens `Possible spelling issue` do LSP

### `lua/config/options.lua`
- `spelllang = {"pt"}`

### `lua/config/keymaps.lua`
- Busca centradas na tela (`n`, `N`, `<C-d>`, `<C-u>`)
- `Ctrl+Shift+7` → `Ctrl+/` (comentários)

### `lua/config/noice.lua`
- Desativa o progress bar do LSP no Noice

---

## 🛠️ Acompanhamento de bugs

### MATLAB Language Server (Linux)
Em `lua/plugins/matlab.lua`:
```lua
cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/matlab-language-server"), "--stdio" },
...
installPath = "/usr/local/MATLAB/R2025b",
```
- Instale via `:MasonInstall matlab-language-server`
- Ajuste `installPath` (linha 11) para o caminho da sua instalação. Exemplo:
  ```lua
  installPath = "/usr/local/MATLAB/v99",  -- Windows: "C:\\Program Files\\MATLAB\\R2024b"
  ```
- Sem MATLAB? Delete (ou renomeie) `lua/plugins/matlab.lua`.

### VimTeX (visualizador de PDF)
`lua/plugins/vimtex.lua:5` usa `zathura` por defeito.
- **Linux**: instale `zathura` (`sudo pacman -S zathura` | `sudo apt install zathura`).
- **Windows**: troque para `sumatrapdf` ou `skim`.

### Ícones não aparecem
1. Nerd Font instalada ✅ 2. configurada no terminal ✅ 3. `Import-Module Terminal-Icons` carregado ✅

---

## 📂 Estrutura

```
~/AppData/Local/nvim/      (Windows)
~/.config/nvim/            (Linux)
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── .neoconf.json
├── stylua.toml
├── lua/
│   ├── config/   (lazy, options, keymaps, autocmds, noice)
│   └── plugins/  (autosave, example, matlab, vimtex)
└── README.md
```

---

## 🆘 Atalhos (LazyVim padrão)

| Tecla | Ação |
|---|---|
| `<leader>` | Espaço (prefixo) |
| `<leader>e` | Explorer de ficheiros |
| `<leader>ff` | Buscar ficheiros |
| `<leader>fg` | Ripgrep |
| `<leader>fb` | Buffers |
| `<leader>sh` | Splits |
| `:Lazy` / `:Lazy sync` | Gerir plugins |


## README FEITO POR AI (AINDA EM REVISÃO POR HUMANO)
