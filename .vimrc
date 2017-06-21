set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'    "|
Plugin 'tomtom/tlib_vim'                 "| snippets
Plugin 'garbas/vim-snipmate'             "|
Plugin 'honza/vim-snippets'              "|
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-fugitive'              " git
Plugin 'airblade/vim-gitgutter'          " git diff column
Plugin 'ervandew/supertab'               " <Tab> completion
Plugin 'scrooloose/syntastic'            " syntax checking
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'         "|
Plugin 'vim-airline/vim-airline-themes'  "| airline
Plugin 'ap/vim-buftabline'               " buffer tab
Plugin 'mileszs/ack.vim'                 " ack support
Plugin 'sickill/vim-pasta'               " paste with proper indentation
Plugin 'majutsushi/tagbar'               " tagbar
Plugin 'andreax79/mru.vim'               " most recently used
Plugin 'mbbill/undotree'                 " history tree
Plugin 'mhinz/vim-startify'              " start screen
Plugin 'michaeljsmith/vim-indent-object' "|
Plugin 'kana/vim-textobj-user'           "| new text objects
Plugin 'kana/vim-textobj-line'
Plugin 'nelstrom/vim-textobj-rubyblock'  "|
Plugin 'nathanaelkane/vim-indent-guides' " visual indent levels
Plugin 'junegunn/vim-easy-align'
Plugin 'gerw/vim-HiLinkTrace'            " shows highlighting groups
Plugin 'jiangmiao/auto-pairs'            " auto-pairs
Plugin 'tpope/vim-repeat'                " repeats plugin maps
Plugin 'tpope/vim-rsi'                   " readline style insertion
Plugin 'tpope/vim-eunuch'                " UNIX shell commands
Plugin 'tpope/vim-surround'              " surroundings
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'               " adds end to def, if, etc
Plugin 'tpope/vim-unimpaired'            " [q [e [f etc
Plugin 'tpope/vim-rails'                 "|
Plugin 'thoughtbot/vim-rspec'            "|
Plugin 'vim-ruby/vim-ruby'               "|
Plugin 'asux/vim-capybara'               "| Ruby
Plugin 'kchmck/vim-coffee-script'        "|
Plugin 'slim-template/vim-slim.git'      "|
Plugin 't9md/vim-ruby-xmpfilter'         " ruby code evalution
Plugin 'jceb/vim-orgmode'
Plugin 'ap/vim-css-color'
" Plugin 'kmdsbng/vim-ruby-eval'
call vundle#end()                        " required

let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
"let g:airline_theme='hybridline'

set background=dark
set laststatus=2
set clipboard=unnamedplus
"set numberwidth=5
set hidden
set ttyfast " i got a fast terminal!
set ttimeoutlen=250  " Make Esc work faster
set updatetime=1500

set foldmethod=syntax
set nofoldenable

set ignorecase " ignore case when searching
set smartcase  " use smartcase, when search query starts with Uppercase,
set incsearch  " search as you type
set gdefault   " global matching is default
"set showmatch " jump to matching bracket

set expandtab " no real tabs!
set tabstop=2 " real tabs should be 2, and they will show with set list on
set shiftwidth=2 " auto-indent amount when using >> <<
set softtabstop=2 " when hitting tab or backsp, how many spaces should a tab be

set omnifunc=syntaxcomplete#Complete
set number
set mouse=a
set showcmd
:set cursorline
set list " show trailing characters
set listchars=tab:\|\ ,eol:¬,trail:·,extends:❯,precedes:❮,nbsp:~

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

set t_Co=256
colorscheme monokai

syntax on             " Enable syntax highlighting
filetype plugin indent on    " required


let mapleader = ' '


map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<cr>
let g:NERDTreeQuitOnOpen = 1
runtime macros/matchit.vim

imap jj <esc>

" nnoremap ; :
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>z za

nnoremap <leader>a  :A<CR>
nnoremap <leader>e  :E<CR>
nnoremap <leader>m  :Emodel<CR>
nnoremap <leader>v  :Eview<CR>
nnoremap <leader>c  :Econtroller<CR>
nnoremap <leader>ra :Rails
nnoremap <leader>rr :Rake
nnoremap <leader>re :Generate
nnoremap <leader>rm :Emodel
nnoremap <leader>rv :Eview
nnoremap <leader>rc :Econtroller
nnoremap <leader>rs :Espec
nnoremap <leader>ri :Eintegrationtest<CR>
nnoremap <leader>ru :Eunittest<CR>
nnoremap <leader>rx :Efunctionaltest<CR>
nnoremap <leader>rw :Emigration<CR>
nnoremap <leader>rd :Eschema<CR>
nnoremap <leader>rf :Efixtures<CR>
nnoremap <leader>rl :Elayout<CR>
nnoremap <leader>ro :Einitializer<CR>
nnoremap <leader>rg :Elib<CR>
nnoremap <leader>rh :Ehelper<CR>
nnoremap <leader>rn :Eenvironment
nnoremap <leader>rz :Estylesheet
nnoremap <leader>rj :Ejavascript<CR>

"Tagbar toggle
nmap <F3> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

map <F4> :MRUToggle<CR>

"Undotree
nnoremap <leader>u :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1

nmap <leader>l <Plug>HiLinkTrace

"Indent guides {{{
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_indent_levels = 25
let g:indent_guides_start_level = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=236 ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=238 ctermbg=238
"}}}

" Make it obvious where 80 characters is
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=236 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

" Removes trailing spaces {{{
function! TrimWhiteSpace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction

nnoremap <silent> <leader>dt :call TrimWhiteSpace()<CR>
"}}}

" tmux fixes {{{
" Handle tmux $TERM quirks in vim
if $TERM =~ '^screen-256color'
    map <Esc>OH <Home>
    map! <Esc>OH <Home>
    map <Esc>OF <End>
    map! <Esc>OF <End>
endif
"}}}

"RSpec.vim mappings {{{
map <Leader>sc :call RunCurrentSpecFile()<CR>
map <Leader>sn :call RunNearestSpec()<CR>
map <Leader>sl :call RunLastSpec()<CR>
map <Leader>sa :call RunAllSpecs()<CR>
"}}}

" Fugitive {{{
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit
nnoremap <leader>gd :Gdiff<cr>
" }}}

" CtrlP
" {{{
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>p :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|png|jpg)$'
  \ }
" }}}

"GitGutter {{{
let g:gitgutter_map_keys = 0
nmap <Leader>gh <Plug>GitGutterStageHunk
nmap <c-k> <Plug>GitGutterPrevHunk
nmap <c-j> <Plug>GitGutterNextHunk
"let g:gitgutter_highlight_lines = 1
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=none"ctermbg=237
hi GitGutterAdd      ctermfg=35  ctermbg=237  " an added line
hi GitGutterChange   ctermfg=178 ctermbg=237  " a changed line
hi GitGutterDelete   ctermfg=1 ctermbg=237  " at least one removed line
hi GitGutterChangeDelete ctermfg=178 ctermbg=237" a changed line followed by at least one removed line
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = 'x'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = '_~'
"}}}

inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"


" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Quicker buffer movement
nnoremap <C-h> :bprevious<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <leader>9 :blast<CR>

"Autopaste {{{
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
"}}}

"Ruby eval {{{
autocmd FileType ruby nmap <buffer> <F1> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F1> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F1> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F2> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F2> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F2> <Plug>(xmpfilter-run)
"}}}

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"Tagbar RSpec support {{{
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods',
        \ 'i:examples'
    \ ]
\ }
"}}}

"Startify {{{
let g:startify_bookmarks = [ '~/.config', '~/projects', '~/projects/odin' ]
"}}}

"Buftabline {{{
let g:buftabline_numbers=2
let g:buftabline_indicators=1
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>0 :bd<CR>
nmap <leader>- :%bd<CR>
" }}}
"sneak
let g:sneak#use_ic_scs = 1

"commentary
nmap <c-_> gcc
xmap <c-_> gcc

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


