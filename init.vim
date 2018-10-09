set nocompatible

filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin() 

"CORE
Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'

"JAVASCRIPT
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'

"ELM
Plugin 'elmcast/elm-vim'

"Elixir
Plugin 'elixir-editors/vim-elixir'

call vundle#end()
filetype plugin indent on

set rtp+=/usr/local/opt/fzf "Include fzf in the runtime path so fzf.vim plugin can use it

let mapleader = ","

set ttyfast
set lazyredraw
set tabstop=2
set shiftwidth=2
set wrap
set expandtab
set tabstop=4
set smartindent
set autoindent
set ruler
set ignorecase
set laststatus=2
set nofoldenable
set hidden
set history=100
set relativenumber
set number

set termguicolors

syntax on
colorscheme onedark

hi VertSplit guibg=bg guifg=bg

map <leader>yy "+yy

"NERDTREE"
map <leader>f :NERDTreeToggle<CR>
map <leader>F :NERDTreeFind<CR>

"FZF
map <leader>o :Files<CR>
map <leader>b :Buffers<CR>
map <leader>a :Ag<CR>

"ALE
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_fixers['elixir'] = ['mix_format']


let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_linters['css'] = ['stylelint']
let g:ale_linters['elixir'] = ['mix']

let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fix_on_save = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

"ELM-VIM
let g:elm_format_autosave = 1

