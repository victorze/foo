# Colorschemes for vim

### github
![github](https://raw.githubusercontent.com/victorze/foo/master/img/foo-github.png)

### hyper
![hyper](https://raw.githubusercontent.com/victorze/foo/master/img/hyper.png)

### abyss
![abyss](https://raw.githubusercontent.com/victorze/foo/master/img/abyss.png)


## Installation
1. Move github.vim, hyper.vim and abyss.vim to your .vim/colors
or install with [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'victorze/foo'
```

2. Add the following to your .vimrc:

```vim
syntax enable
set background=light
colorscheme github
```

## Airline (optional)

```vim
let g:airline_theme='distinguished'
```

## Sintax template (optional)

- jinja2 and django template install plugin:

```vim
Plug 'Glench/Vim-Jinja2-Syntax'
```

- Blade template (Laravel) install plugin
```vim
Plug 'jwalton512/vim-blade'
```

License
---
MIT
