# simple_terminal.nvim

An simple split terminal to neovim made with lua.

## 🚀 Getting started

Install using vim-plug:
```vim
Plug 'sennshi/simple_terminal.nvim'
```

or install install locally using it:
```
git clone https://github.com/sennshi/simple_terminal.nvim
```

and in your config file paste it to use plugin:

```vim
Plug '<project path>/simple_terminal.nvim'
```

## ⚙️ Setup.

**vimscript**:

```vim
nnoremap <C-t><left> :STerminal left<cr>
nnoremap <C-t><right> :STerminal right<cr>
nnoremap <C-t><Down> :STerminal bottom<cr>
nnoremap <C-t><Up> :STerminal top<cr>
```

**Lua**:
```lua
vim.api.nvim_set_keymap('n', '<C-t><left>', ':STerminal left<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t><right>', ':STerminal right<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t><down>', ':STerminal bottom<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t><up>', ':STerminal top<cr>', { noremap = true, silent = true })
```

setup required arguments:

| Arguments           |  values  |
| ------------------------------------ | ------------------- |
|  `g:simple_terminal_horizontal_size` |  width size to horizontally split. |
|  `g:simple_terminal_vertical_size`   |  height size to vertically split.  |
|  `g:simple_terminal_shell`           |  used shell in split terminal |

___

* If you find an english error in README, make a issue to i can fix this, because my english it's really bad
* I do not intend to make updates to this plugin.
---

`made with ❤️ by sennshi`

