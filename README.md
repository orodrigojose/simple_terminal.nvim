# simple_terminal.nvim

a simple split terminal to neovim made with lua.

## 🚀 Getting started

instal using vim-plug:
```vim
Plug 'sennshi/simple_terminal.nvim'
```

or install install locally:
```
git clone https://github.com/sennshi/simple_terminal.nvim
```

and in your config file:

```vim
Plug '<project path>/simple_terminal.nvim'
```

## ⚙️ Setup.

In your config file, setup the mappings:

```vim
nnoremap <C-t><left> :STerminal left<cr>
nnoremap <C-t><right> :STerminal right<cr>
nnoremap <C-t><Down> :STerminal bottom<cr>
nnoremap <C-t><Up> :STerminal top<cr>
```

* If you find an english error in README, make a issue to i can fix this, because my english it's really bad

---

`made with ❤️ by sennshi`

