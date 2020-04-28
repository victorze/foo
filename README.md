# Colorschemes for vim

### hyper
![hyper](https://raw.githubusercontent.com/victorze/foo/master/img/hyper_.png)

### abyss
![abyss](https://raw.githubusercontent.com/victorze/foo/master/img/abyss_.png)

### github
![github](https://raw.githubusercontent.com/victorze/foo/master/img/github_.png)

## Installation
1. Move github.vim, hyper.vim and abyss.vim to your .vim/colors
or install with [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'victorze/foo'
```

2. Add the following to your .vimrc:

```vim
syntax enable
set background=dark
colorscheme hyper
```

Note (for the github theme): If you are running Vim in a terminal you must choose a font that supports bold text.

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
