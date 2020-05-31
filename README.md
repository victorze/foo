# Colorschemes for vim

### hacker
![hacker](https://raw.githubusercontent.com/victorze/foo/master/img/hacker.png)

### mr-robot
![mr-robot](https://raw.githubusercontent.com/victorze/foo/master/img/mr-robot_.png)

### hyper
![hyper](https://raw.githubusercontent.com/victorze/foo/master/img/hyper_.png)

### abyss
![abyss](https://raw.githubusercontent.com/victorze/foo/master/img/abyss_.png)

### github-old
![github](https://raw.githubusercontent.com/victorze/foo/master/img/github_.png)

## Installation
1. Copy hacker.vim, mr-robot.vim, hyper.vim, abyss.vim and github-old.vim to
your .vim/colors or install with [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'victorze/foo'
```

2. Add the following to your .vimrc:

```vim
syntax enable
set background=dark
colorscheme hacker
```

Note (for the github-old theme): If you are running Vim in a terminal you must choose a font that supports bold text.

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
