# Colorschemes for vim

### foo-abyss
![abyss](https://raw.githubusercontent.com/victorze/foo/master/img/foo-abyss.png)

### foo-hyper
![hyper](https://raw.githubusercontent.com/victorze/foo/master/img/foo-hyper.png)

### foo-mrrobot
![mrrobot](https://raw.githubusercontent.com/victorze/foo/master/img/foo-mrrobot.png)


## Installation
1. Move foo-abyss.vim, foo-hyper.vim and foo-mrrobot.vim to your .vim/colors
or install with [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'victorze/foo'
```

2. Add the following to your .vimrc:

```vim
syntax enable
set background=dark
colorscheme foo-abyss
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
