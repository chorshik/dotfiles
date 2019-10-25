let mapleader =","
command! -nargs=0 Sw w !sudo tee % > /dev/null

" ==== Settings
"
set encoding=UTF-8
set mouse=a " Enable mouse for scolling and resizing
set nocompatible
set tw=0
set expandtab
set paste
" highlight searche
set hlsearch
" case insensitive search
set ignorecase
set smartcase
" ask to save
"set confirm
set ruler
set hidden
" Размер табуляции по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4
set showtabline=0


call plug#begin('~/.vim/plugged')

" https://github.com/inkarkat/vim-CompleteHelper
Plug 'inkarkat/vim-CompleteHelper'

" https://github.com/inkarkat/vim-ingo-library
Plug 'inkarkat/vim-ingo-library'

" https://github.com/MarcWeber/vim-addon-mw-utils
Plug 'MarcWeber/vim-addon-mw-utils'

" ==== PLUGIN THEMES
"
" https://github.com/lifepillar/vim-solarized8
"Plug 'lifepillar/vim-solarized8' -16bit color colorscheme: solarized8
Plug 'iCyMind/NeoSolarized'
"
" https://github.com/morhetz/gruvbox
"Plug 'morhetz/gruvbox'
"
" https://github.com/junegunn/goyo.vim
Plug 'junegunn/goyo.vim'

" ==== Line vim
"
" https://github.com/itchyny/lightline.vim
"Plug 'itchyny/lightline.vim'
"
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ==== File tree
"
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" ==== Jump to any location specified by two characters
"
" https://github.com/justinmk/vim-sneak
Plug 'justinmk/vim-sneak'

" ==== html vim
"
" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'


" ==== syntax helpers
"
" https://github.com/mboughaba/i3config.vim
Plug 'mboughaba/i3config.vim'
"
"https://github.com/ycm-core/YouCompleteMe
"Plug 'Valloric/YouCompleteMe'
"
"https://github.com/neomake/neomake
"Plug 'neomake/neomake'

" ==== moving / searching
"
" https://github.com/ctrlpvim/ctrlp.vim
"Plug 'ctrlpvim/ctrlp.vim'
"
" https://github.com/easymotion/vim-easymotion
"Plug '/easymotion/vim-easymotion'

" ==== snippets
"
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" ==== xkb-switch vim
"
" https://github.com/lyokha/vim-xkbswitch
Plug 'lyokha/vim-xkbswitch'

" ==== Comments
"
" https://github.com/scrooloose/nerdcommenter
Plug 'scrooloose/nerdcommenter'

" ==== LaTeX
"
"https://github.com/lervag/vimtex
"Plug 'lervag/vimtex'

" ==== Markdown
"
"https://github.com/shime/livedown
"Plug 'shime/vim-livedown'

" ==== Async
"
"https://github.com/skywind3000/asyncrun.vim
"Plug 'skywind3000/asyncrun.vim'

" ==== Fonts
"
Plug 'ryanoasis/vim-devicons'

call plug#end()

" colorscheme
"
colorscheme NeoSolarized
set background=dark
set nu
syntax on
"set cursorline
"highlight CursorLine guibg=lightblue ctermbg=lightgray
"highlight CursorLine term=none cterm=none
highlight clear LineNr
highlight clear SignColumn
"let g:gruvbox_contrast_dark="meduim"

" display lightline
"
"set laststatus=2
"set noshowmode
"let g:lightline = {
"      \ 'colorscheme': 'powerline',
"      \ }

" ==== vim-airline

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1

" syntax highlighting
"
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" ==== Buffers
"
map  <C-t> :enew<CR>
map  <C-l> :bn<CR>
map  <C-h> :bp<CR>
map  <C-w> :bp <BAR> bd #<CR>

" ==== Tabs 
"
"map  <C-l> :tabn<CR>
"map  <C-h> :tabp<CR>
"map  <C-t> :tabnew<CR>

" ==== Clipboard
"
vmap <C-c> "+y

set clipboard=unnamedplus

" ==== search
"
" highlight search
"
nnoremap <F3> :set hlsearch!<CR> 

" Alternative variant
" This unsets the "last search pattern" register by hitting return
"nnoremap <CR> :noh<CR><CR>

" ==== disable swap file warning
"set shortmess+=A

" NERDTree opts
"
"autocmd vimenter * NERDTree  -autostart NERDTree when start vim
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'


" ==== Easymotion
"
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

" Goyo plugin makes text more readable when writing prose:
"
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" ==== snippets
"
let g:UltiSnipsExpandTrigger="<C-p>"
"let g:UltiSnipsJumpForwardTrigger="<C-o>"
"let g:UltiSnipsJumpBackwardTrigger="<C-i>"
let g:UltiSnipsListSnippets="<C-o>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" ==== LaTeX
"
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_view_method = 'zathura'

" ==== YouCompleteMe
"
let g:ycm_show_diagnostics_ui = 0 "Обрубаем YCM

" ==== Neomake
"
let g:neomake_cpp_clang_maker = {
   \ 'exe': 'clang++',
   \ 'args': ['-I/usr/local/include/wx-3.0', '-std=c++17'],
   \ }

" ---- Automatic keyboard layout switching upon entering/leaving insert mode
" ---- using xkb-switch utility and plugin xkbswitch
" ----
"

let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']
let g:XkbSwitchNLayout = 'us'
let g:XkbSwitchILayout = 'us'
" loading xkbswitch on BufRead when bufhidden=delete will clash xkbswitch
" function imappings_load() and plugin EnhancedJumps as soon as both will do
" redir simultaneously!
let g:XkbSwitchLoadOnBufRead = 0
let g:XkbSwitchSkipIMappings =
            \ {'c'   : ['.', '>', ':', '{<CR>', '/*', '/*<CR>'],
            \  'cpp' : ['.', '>', ':', '{<CR>', '/*', '/*<CR>']}
let g:XkbSwitchSkipFt = [ 'conque_term' ]
let g:XkbSwitchAssistNKeymap = 1    " for commands r and f
let g:XkbSwitchAssistSKeymap = 1    " for search lines
let g:XkbSwitchDynamicKeymap = 1
let g:XkbSwitchKeymapNames = {'ru' : 'russian-jcukenwin'}

" Misc settings
"
let g:goyo_width = "80%"
let g:goyo_height = "80%"





