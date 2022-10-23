syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu 
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

set colorcolumn=88

set mouse=a

highlight ColorColumn ctermbg=0 guibg=lightgrey 
let g:OmniSharp_server_use_mono = 1

call plug#begin('~/.config/nvim/plugged')
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'burnettk/vim-angular'
call plug#end()

colorscheme palenight
set bg=dark
if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:used_javascript_libs = 'angular'

let g:minimap_auto_start=1
let g:netrw_browser_split=2
let g:netrw_banner = 0
let g:netwr_winsize = 25
let g:coc_node_path = "/home/edwardg/.nvm/versions/node/v15.3.0/bin/node"
let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>


nmap<leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart

"Java autcomplete"
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

let g:OmniSharp_highlighting = 2
" Don't autoselect first omnicomplete option, show options even if there is
" only
" " one (so the preview documentation is accessible). Remove 'preview',
" 'popup'
" " and 'popuphidden' if you don't want to see any documentation whatsoever.
" " Note that neovim does not support `popuphidden` or `popup` yet: 
" " https://github.com/neovim/neovim/issues/10996
set completeopt=longest,menuone,preview

" " Highlight the completion documentation popup background/foreground the
" same as
" " the completion menu itself, for better readability with highlighted
" " documentation.
" " Fetch full documentation during omnicomplete requests.
" " By default, only Type/Method signatures are fetched. Full documentation
" can
" " still be fetched when you need it with the :OmniSharpDocumentation
" command.
" " Set desired preview window height for viewing documentation.
" " You might also want to look at the echodoc plugin.
set previewheight=5
"
" " Go section
au filetype go inoremap <buffer> . .<C-x><C-o>

