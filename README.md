# Colorschemes for vim

### oceanic
![oceanic](https://raw.githubusercontent.com/victorze/foo/master/img/oceanic.png)

![oceanic-react](https://raw.githubusercontent.com/victorze/foo/master/img/oceanic-react.png)

### hyper
![hyper](https://raw.githubusercontent.com/victorze/foo/master/img/_hyper.png)

### abyss
![abyss](https://raw.githubusercontent.com/victorze/foo/master/img/_abyss.png)

### hacker
![hacker](https://raw.githubusercontent.com/victorze/foo/master/img/_hacker.png)

### pharo
![pharo](https://raw.githubusercontent.com/victorze/foo/master/img/pharo.png)

### off
![off](https://raw.githubusercontent.com/victorze/foo/master/img/off.png)

## Installation
1. Copy oceanic.vim, hyper.vim, hacker.vim, abyss.vim, pharo.vim and off.vim to
your .vim/colors or install with [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'victorze/foo'
```

2. Add the following to your .vimrc:

```vim
syntax enable
set background=dark
colorscheme hyper
```

## Airline (optional)

```vim
let g:airline_theme='distinguished'
```

## Highlight JavaScript Syntax (optional)
```vim
Plug 'yuezk/vim-js'
```

## Sintax template (optional)

- Highlight the JSX syntax

```vim
Plug 'maxmellon/vim-jsx-pretty'
```

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
