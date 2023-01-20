<h3 align="center">
<img src="https://github.com/GwHisHere/concoctis.nvim/blob/main/assets/code.png"/></br>
Noctis 🥂 Gruvbox-Material Colorscheme
</h3>

<p align="center">
concoctis is inspired by
<a href="https://github.com/wheredoesyourmindgo/gruvbox-concoctis-vscode-theme">gruvbox-concoctis</a>
vscode theme with readability and functionality in mind </br>
using <a href="https://github.com/sainnhe/gruvbox-material">gruvbox-material</a> palette and
<a href="https://github.com/liviuschera/noctis">noctis</a> way to highlight, Every color variety have a dark version </br> 
with the power of treesitter and lsp
</p>

# Installation

```lua
-- lazy.nvim
return {
    "GwHisHere/concoctis.nvim",
    config = function()
    vim.cmd.colorscheme "concoctis"
    -- For neovim < 0.8.0
    -- vim.cmd "colorscheme concoctis"
    end
}
```

## WIP

this color scheme is still under development
if you find anything or you want to help please open issue </br> I'm new to this :)

## Acknowledgements

- [gruvbox-material](https://github.com/sainnhe/gruvbox-material) (palette/highlight)
- [noctis](https://github.com/liviuschera/noctis) (syntax highlighting)
- [gruvbox-concoctis](https://github.com/wheredoesyourmindgo/gruvbox-concoctis-vscode-theme) (inspiration)
- [catppuccin](https://github.com/catppuccin/nvim) (style highlight/utils)
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) (init/highlight group)
