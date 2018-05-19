:filetype plugin on

:set ruler
:set number
:set relativenumber

call plug#begin('~/.local/share/nvim/plugged')

" Languages
Plug 'elixir-lang/vim-elixir'
Plug 'rust-lang/rust.vim'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go'

" Checkers
Plug 'vim-syntastic/syntastic'

" Color schemes
Plug 'joshdick/onedark.vim'

" Status bar
Plug 'itchyny/lightline.vim'

" Auto completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

call plug#end()


" Color scheme
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1
let g:lightline = {
\   'colorscheme': 'onedark',
\}

syntax on
colorscheme onedark

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_checkers = ['validator']


" golang configuration
"" goimports on save
let g:go_fmt_command = "goimports"


" Emmet configuration
"" Enable only with html and css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"" Use 2 spaces as intentation
let g:user_emmet_settings = {
\   'indentation' : '  ',
\   'html' : {
\     'indentation' : '  '
\   },
\   'css' : {
\     'indentation' : '  '
\   }
\}



" Indentations
autocmd Filetype html,css setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yml,yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype sh setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype go setlocal ts=4 sts=4 sw=4 noexpandtab


" Key bindings
let mapleader = " "

"" Copy / paste system clipboard
noremap <leader>y "+y
noremap <leader>p "+p

"" Windows movement
noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>

"" Windows management
noremap <leader>H :wincmd H<CR>
noremap <leader>J :wincmd J<CR>
noremap <leader>K :wincmd K<CR>
noremap <leader>L :wincmd L<CR>
