lua vim.g.loaded_netrw = 1
lua vim.g.loaded_netrwPlugin = 1

" Tabs and indenting ---------------------------------------------------------
set autoindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Searching ------------------------------------------------------------------
set incsearch
set hlsearch
set smartcase
set scrolloff=7
set history=1000

" Editing --------------------------------------------------------------------
set textwidth=79
set ruler
set cursorline
set colorcolumn=80

" Color Options --------------------------------------------------------------
set termguicolors
hi ColorColumn ctermbg=darkgrey
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_better_performance = 1
"colorscheme everforest
"colorscheme gruvbox-material
colorscheme gruvbox
"colorscheme OceanicNext

" File Options ---------------------------------------------------------------
set autoread
set backup

" Spell checking -------------------------------------------------------------
set nospell
set spelllang=de,en

" Line Numbering -------------------------------------------------------------
set number
set relativenumber
au InsertEnter * :set nu
au InsertLeave * :set rnu

" Key Bindings ---------------------------------------------------------------
let mapleader = ","
inoremap jj <Esc>
nnoremap <leader><space> :noh<cr>
" split windows horizontaly
nnoremap <leader>w <C-w>v<C-w>l
" reformat paragraph to corrext line length
nnoremap <leader>q gqip
" Easier moving between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>c :vsplit $MYVIMRC<cr>
nnoremap <leader>m :NvimTreeToggle<cr>

" Python settings ------------------------------------------------------------
au BufNewFile,BufRead *.py set foldmethod=indent
noremap <space> za

lua << EOF
require 'plugins'
require 'lualine'.setup { options = { theme = 'gruvbox' }}
require 'nvim-tree'.setup {
    actions = {
        open_file = {
            quit_on_open = true,
            window_picker = {
                enable = false,
            }
        }
    }
}
require 'nvim-web-devicons'.setup {}
require 'nvim-treesitter.install'.compilers = { "clang" }
require 'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    auto_install = true,
    highlight = { enable = true, additional_vim_regex_highlighting = false, }
}
EOF
