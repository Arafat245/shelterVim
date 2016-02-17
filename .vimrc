" My vimrc setting
" THE VIMRC $MyVIMRC
" vim configuration file
" Edited by Emrul Hasan Zawad <mechezawad@outlook.com>
"
" long live vim
set encoding=utf-8
set nocompatible
set secure
" When writing buffer encoding to utf-8
set fileencoding=utf-8
" Script Encoding When writing to buffer
scriptencoding utf-8

" Pathogen support
" execute pathogen#infect()

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Vim Latex support
" Plugin 'lervag/vimtex'
" color schemes
Plugin 'w0ng/vim-hybrid'
Plugin 'neitanod/vim-clevertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'hukl/Smyck-Color-Scheme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'regedarek/ZoomWin'
Plugin 'vim-airline/vim-airline-themes'
" Plugins for javascript library and modern syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-fugitive'
" make your own text-object using regular expression
" to learn about more about any plugin ...go to github.com
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
" Specific to rails
Plugin 'mhinz/vim-startify'
Plugin 'ngmy/vim-rubocop'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
" worked for java and scala
Plugin 'tpope/vim-classpath'
" plugins
Plugin 'bling/vim-airline'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-commentary'
" for laravel blade template engine
" Plugin 'xsbeats/vim-blade'
Plugin 'ap/vim-css-color'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/supertab'
Plugin 'gregsexton/gitv'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'majutsushi/tagbar'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/trailing-whitespace'

" syntax files
Plugin 'pangloss/vim-javascript'
" Optional nerdtree and nerdtreetab
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" syntax highlighting and auto-indentation
syntax on
filetype indent on
filetype plugin on
inoremap # X<C-H>#
set ai
set si
set nu

" omg folding is the worst
" but sometimes useful for hiding details
set nofoldenable

" omg automatic comment insertion is the worst
set formatoptions-=cro
autocmd FileType *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" shortcuts to common commands
" you can use leader whatever you want
let mapleader = ","

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" always show tab line to avoid annoying resize
set showtabline=2

" searching options
set incsearch
set ignorecase
set smartcase

" Enable extended regexes
set magic

" Ignore stuff that can't be opened
set wildignore+=tmp/**

" disable backups
set nobackup
set nowritebackup
set noswapfile

" disable annoying beep on errors
set noerrorbells
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" font options
set background=dark
set t_Co=256
colorscheme hybrid

" keep at least 5 lines below the cursor
set scrolloff=5

" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" enable mouse support
set mouse=a

" cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" word wrapping
set wrap
set linebreak
set nolist

" better tab completion on commands
set wildmenu
set wildmode=list:longest,full

set wildignore+=*.pyc,__pycache__

" close buffer when tab is closed
set nohidden

" ctags
" for ctags you have to run
" ctags -R .
" in that working directory
set tags=./tags,tags;
set tags+=~/.vim/myTags/systags

" ,tl browse tags using ctags
nnoremap <leader>tl :TagbarToggle<CR>

" better moving between windows
" Ctrl+{h,j,k,l}: move among windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" ,g: ctags go to definition in new tab
" ,G: ctags go to definition in new buffer
" ,tp: toggle paste mode
" ,,: line feed in normal
" ,q: close tab
" ,hz: my doc file
" ,z : set automatic foldmethod
" ,zz: set auto open and close folding
" ,zzz: out from fold
" ,ts : SyntasticToggleMode

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
nnoremap <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
nnoremap <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

nnoremap <silent> <leader>, o<Esc>

nnoremap <leader>nt :tabedit <c-r>=expand("%:p:h")<cr>/
nnoremap <leader>g  <C-w><C-]><C-w>T
nnoremap <leader>G  <C-]>
nnoremap <leader>ts :SyntasticToggleMode<CR>
nnoremap <leader>tp  :set invpaste<CR>
nnoremap <leader>q  :tabclose<CR>
nnoremap <Leader>hz :tabe ~/Dropbox/FUNProgramming/ehz_notebook/ehzNOTEBOOK.txt<cr>
nnoremap <Leader>zi :set foldmethod=indent<CR>
nnoremap <Leader>zs :set foldmethod=syntax<CR>
nnoremap <Leader>zz :set foldclose=all<CR>:set foldcolumn=6<CR>
nnoremap <Leader>zzz :set nofoldenable<CR>:set foldcolumn=0<CR>

" Auto change directory to match current file
nnoremap ,wd :cd %:p:h<CR>:pwd<CR>

" more logical vertical navigation
nnoremap <silent> k gk
nnoremap <silent> j gj

" make copy/pasting nice
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction

" ,tm: toggle mouse support
nnoremap <leader>tm :call ToggleMouse()<CR>

"Only auto omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" OmniCompletion for JS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"Auto completion for PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Omni complete CSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


" Only apply to .txt files...
augroup HelpInTabs
    autocmd!
    autocmd BufEnter *.txt call HelpInNewTab()
augroup END
" Only apply to help files...
function! HelpInNewTab()
    if &buftype == 'help'
        "Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction

" Interesting and Advanced vim Configuration by Damiam Conway
" Make the 81st column stand out

highlight ColorColumn ctermbg=Gray
call matchadd('ColorColumn', '\%81v', 100)

" setting personalized rulerformat
set rulerformat=%15(%c%V\ %p%%%)


" Dragging and duplicating visual-line and visual-block mode
" you can change your binding as you wish

vmap <expr> <C-h>   DVB_Drag('left')
vmap <expr> <C-l>  DVB_Drag('right')
vmap <expr> <C-j>   DVB_Drag('down')
vmap <expr> <C-k>     DVB_Drag('up')

vmap <expr> <C-D>      DVB_Duplicate()

" gui configuration of gvim Graphical VIM
function! ToggleGUICruft()
  if &guioptions == 'irml'
    exec('set guioptions=irLmT')
  else
    exec('set guioptions=irml')
  endif
endfunction
command! ToggleGUICruft :call ToggleGUICruft()

" By default, hide gui menus
set guioptions=irml

let g:syntastic_enable_balloons = 1
" Syntastic Plugin C11 support Clang Compiler
" change value to gcc if you love GCC compiler
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options = ' -std=c11 -Wall -Werror -pedantic-errors '

" Syntastic Plugin C++14 support for Clang Compiler
" Make sure clang have system path
let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler = 'g++'
" flags more specific to clang
let g:syntastic_cpp_compiler_options = ' -ggdb3 -O0 -std=c++14 -stdlib=libc++ -Werror -Wself-assign -Wall -pedantic-errors -Wextra-tokens -Wambiguous-member-template -Wbind-to-temporary-copy '

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType vim  setlocal ts=2 sts=0 sw=2 expandtab fdm=marker fdl=0
  autocmd FileType sh   setlocal ts=2 sts=0 sw=2 expandtab
  autocmd FileType c    setlocal ts=4 sts=0 sw=4 expandtab
  autocmd FileType cpp  setlocal ts=4 sts=0 sw=4 expandtab
  autocmd FileType java setlocal ts=4 sts=0 sw=4 expandtab
  autocmd FileType php  setlocal ts=4 sts=0 sw=4 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " for aurduino support
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd BufNewFile,BufRead *.ino setlocal ft=arduino
endif

" Stop that damn ex mode
nnoremap Q <nop>

" Syntastic Checker
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" html smart indentation
" Only works in vim --noplugin mode
augroup htmlIndent
  autocmd!
  autocmd BufRead,BufWritePost *.html normal gg=G
augroup END

" better for .c and .cpp build and run
augroup sourceCodeC
  autocmd!
  autocmd FileType c nnoremap <leader>b :! make %:r<CR>
  autocmd FileType c nnoremap <leader>bb :! clang -ggdb3 -O0 -std=c11 -Werror -Wall -pedantic-errors *.c -o %:r<CR>
  autocmd FileType c nnoremap <leader>bn :! clang -ggdb3 -O0 -std=c11 -Werror -Wall -pedantic-errors -o<space>
  autocmd FileType c nnoremap <leader>r :! ./
  autocmd FileType c nnoremap <leader>rr :! ./%:r<CR>
augroup END

augroup sourceCodeCPP
  autocmd!
  autocmd FileType cc,cpp nnoremap <leader>b :! make %:r<CR>

  autocmd FileType cc,cpp nnoremap <leader>bb :! clang++ -ggdb3 -O0 -std=c++14 -stdlib=libc++ -lc++abi -Werror -Wself-assign -Wall -pedantic-errors -Wextra-tokens -Wambiguous-member-template -Wbind-to-temporary-copy -fdiagnostics-show-template-tree -ferror-limit=33 -ftemplate-backtrace-limit=13 -lpthread -l:libmagic.so.1 *.cpp -o %:r<CR>

  autocmd FileType cc,cpp nnoremap <leader>bn :! clang++ -ggdb3 -O0 -std=c++14 -stdlib=libc++ -lc++abi -Werror -Wself-assign -Wall -pedantic-errors -Wextra-tokens -Wambiguous-member-template -Wbind-to-temporary-copy -fdiagnostics-show-template-tree -ferror-limit=33 -ftemplate-backtrace-limit=13 -lpthread -l:libmagic.so.1 -o<space>

  autocmd FileType cc,cpp nnoremap <leader>r :! ./
  autocmd FileType cc,cpp nnoremap <leader>rr :! ./%:r<CR>
augroup END

" Better for javac
augroup sourceCodeJava
  autocmd!
  autocmd FileType java nnoremap <leader>r :! javac<space>
augroup END

" for PHP cli mode
augroup sourceCodePHP
  autocmd!
  autocmd FileType php nnoremap <leader>r :! php<space>
  " autocmd FileType php colo jellybeans
augroup END

function! JscsFix()
    "Save current cursor position"
    let l:winview = winsaveview()
    "Pipe the current buffer (%) through the jscs -x command"
    % ! jscs -x
    "Restore cursor position - this is needed as piping the file"
    "through jscs jumps the cursor to the top"
    call winrestview(l:winview)
endfunction
command! JscsFix :call JscsFix()

" Better for JS
augroup sourceCodeJS
  autocmd!
  autocmd FileType javascript nnoremap <leader>r :! nodejs %<CR>
  autocmd FileType javascript nnoremap <leader>a :call JscsFix()<CR>:w<CR>

  " JscsFix command just before the buffer is written for *.js files"
  " autocmd BufWrite *.js JscsFix
augroup END

augroup sourceCodeRuby
  autocmd!
  autocmd FileType ruby nnoremap <leader>ra :! rubocop % <CR>
  autocmd FileType ruby nnoremap <leader>a :call RubocopFix()<CR>
  autocmd FileType ruby nnoremap <leader>r :! ruby % <CR>
  " Ruby autocomplete
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
augroup END

augroup SourcePython
    autocmd!
    autocmd filetype python set expandtab
    set list
    set listchars=tab:>.,trail:.,extends:#,nbsp:.
augroup END

" cursorline
" set cursorline

" Match angle bracket
set matchpairs+=<:>

" " vim statusline when ~$vim --noplugin and if you don't like airline vim
" set statusline=   " clear the statusline for when vimrc is reloaded
" set statusline+=%-10.3n\                      " buffer number
" set statusline+=%f\                          " file name
" set statusline=[%t]                        " only current tail filename
" set statusline+=(%n)                         " show the number of buffer
" set statusline+=%{HasPaste()}
" set statusline+=%h%m%r%w                     " flags
" set statusline+=[%{strlen(&ft)?&ft:'none'}]  " filetype
" set statusline+=%=                           " right align
" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
" set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
      return 'PASTEmode'
    endif
      return ''
endfunction

" Escape key alteration
inoremap kj <esc>

" repoen a file at the same line it was on when previously closed
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif


" supporting undo and history level
set undolevels=5000
set history=1000

" promt user Confirmation
set confirm

" autoread from outside buffer
set autoread

" Indenting PARADIGM

set autoindent                              "Retain indentation on next line
set smartindent                             "Turn on autoindenting of blocks

nnoremap <silent> >> :call ShiftLine()<CR>|               "And no shift magic on comments

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction

" vimdiif instantiates in different colorscheme
if &diff
  colorscheme jellybeans
endif

au FilterWritePre * if &diff | colorscheme jellybeans | endif

" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" tpope MARKDOWN
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" ,nn for rename the current buffer
" RENAME CURRENT FILE
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
command! RenameFile :call RenameFile()

nnoremap <Leader>nn :call RenameFile()<cr>

" Disable K looking stuff up
map K <Nop>

"  >>>highlight cursorcolumn and cursorline and statusline and tabline

" highlight Tabline term=bold ctermfg=black ctermbg=yellow
highlight StatusLine term=bold  ctermfg=black ctermbg=101
" highlight StatusLineNC term=bold  ctermfg=2 ctermbg=black
" highlight CursorLine term=bold cterm=NONE
highlight cursorcolumn term=bold ctermfg=cyan ctermbg=black

" NERDtreetab toggle using ,l.. In tmux use nterw file browser if needed
nnoremap <leader>l  :NERDTreeTabsToggle<CR>

" NERDtree for fancy look
let g:NERDTreeDirArrows=0

" NERDtree gui vim
let g:nerdtree_tabs_open_on_gui_startup=0

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright


" Allow stylesheets to autocomplete hyphenated words
autocmd FileType css,scss,sass setlocal iskeyword+=-

set title

" ; is better than :
nnoremap ; :

" Use the system clipboard for yank / delete / paste operations
if has('unnamedplus')
   set clipboard=unnamed
endif

" ensure line numbers are viewable in translucent terminal windows
highlight LineNr ctermfg=darkgray ctermbg=blue

" disable annoying beep on errors
set noerrorbells
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" supertab config
" let g:SuperTabDefaultCompletionType = '<C-X><C-O>'

autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" Vim airline setting
let g:airline#extensions#tabline#enabled = 1

" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'

" Remove ALL autocommands to prevent them from being loaded twice.
if has('autocmd')
  autocmd!
endif

" We love syntax highlighting.
if has('syntax')
  syntax enable
endif

" automatically create undo directory for persistent undo AWESOME
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/tmp')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" view director for save your previous view
let myViewDir = expand(vimDir . '/view')
" Create dirs
call system('mkdir ' . vimDir)
call system('mkdir ' . myViewDir)
let &viewdir = myViewDir

" store all view files here
set viewdir=~/.vim/view

silent !mkdir -p ~/.vim/myTags > /dev/null 2>&1
silent !mkdir -p ~/.vim/mySpell > /dev/null 2>&1

" vim session support
silent !mkdir -p ~/.vim/sessions > /dev/null 2>&1
let g:startify_session_dir = "~/.vim/sessions"
" If you only want to save the current tab page:
set sessionoptions-=tabpages
" If you don't want help windows to be restored:
set sessionoptions-=help
" automatically save and open views (folds)
" Don't save hidden and unloaded buffers in sessions.
set sessionoptions-=buffers
" Don't persist options and mappings because it can corrupt sessions.
set sessionoptions-=options

set viewoptions-=options

augroup vimrc
    autocmd BufWritePost *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      mkview
    \|  endif
    autocmd BufRead *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      silent loadview
    \|  endif
augroup END

highlight Folded guibg=grey guifg=blue
highlight Foldcolumn guibg=darkgray guifg=white


" Automatically removing all trailing whitespace

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" CoffeeScirpt
augroup filetype_coffee
  autocmd!
  au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
augroup END
"

" JavaScript
augroup filetype_javascript
  autocmd!
  let g:javascript_conceal = 1
augroup END

" JSON
augroup filetype_json
  autocmd!
  au BufRead,BufNewFile *.json set ft=json syntax=javascript
augroup END

" Markdown
augroup filetype_markdown
  autocmd!
  let g:markdown_fenced_languages = ['ruby', 'html', 'javascript', 'css', 'erb=eruby.html', 'bash=sh']
augroup END
"
" Search and replace word under cursor ,*
nnoremap <leader><space> :%s/\<<C-r><C-w>\>/
vnoremap <leader><space> "hy:%s/\V<C-r>h/

" XML
augroup filetype_xml
  autocmd!
  au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
augroup END

" syntastic RUBy
augroup syntastic_config_ruby
  autocmd!
  let g:syntastic_ruby_checkers = ['mri', 'rubocop']
augroup END


" Airline tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*~/.vim/view/*

set wildignorecase

set wildignore+=*.o,*.out,*.obj
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.7z
set wildignore+=*.swp

" Force vim to use 'very magic' mode for regex searches
nnoremap / /\v
"
" Clear highlights search
" highlight using  ,hh
nnoremap <silent><expr> <Leader>hh (&hls && v:hlsearch ? ':set nohls' : ':set hls')."\n"

nnoremap <leader>tn :call ToggleNumber()<CR>

set cursorline number

function! ToggleNumber()
    if (&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc
command! ToggleNumber :call ToggleNumber()

" Reminders for new comers:)
nnoremap <Left> :echom 'Use h'<CR>
nnoremap <Right> :echom 'Use l'<CR>
nnoremap <Up> :echom 'Use k'<CR>
nnoremap <Down> :echom 'Use j'<CR>

" config for better move to block
runtime macros/matchit.vim

"Square up visual selections...
set textwidth=0
set virtualedit=insert

"Don't page long listings
set nomore

" Use space to jump down a page (like browsers do)...
nnoremap  <Space> <PageDown>
vnoremap  <Space> <PageDown>

" Inverse highlighting for cursor...
highlight CursorInverse   term=inverse ctermfg=black ctermbg=white

" Autoclosing curly braces
inoremap {<CR> {<CR>}<ESC>O

" Easier mappings for resizing windows
nnoremap <C-w>< 5<C-w><
nnoremap <C-w>> 5<C-w>>
nmap + 5<C-w>+
nmap _ 5<C-w>-

" Make it easier to paste in insert mode
inoremap PPP <Esc>pa

" Index ctags from any project, including those outside Rails
function! ReindexCtags()
  let l:ctags_hook = '$(git rev-parse --show-toplevel)/.git/hooks/ctags'

  if exists(l:ctags_hook)
    exec '!'. l:ctags_hook
  else
    exec "!ctags -R ."
  endif
endfunction

" systemwise ctags for coding
function! MySystags()
  let l:ctags_hook = '$(git rev-parse --show-toplevel)/.git/hooks/ctags'

  if exists(l:ctags_hook)
    exec '!'. l:ctags_hook
  else
    exec "!ctags -R -f ~/.vim/myTags/systags /usr/include /usr/local/include"
  endif
endfunction
command! MySystags :call MySystags()

set tags+=~/.vim/myTags/CPPtags

" systemwise ctags for coding optimized for clang and modern c++11 or c++14
function! MyCPPtags()
  let l:ctags_hook = '$(git rev-parse --show-toplevel)/.git/hooks/ctags'

  if exists(l:ctags_hook)
    exec '!'. l:ctags_hook
  else
      exec "!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --sort=foldcase --language-force=C++ -f ~/.vim/myTags/CPPtags /usr/include/c++/4.9.3/ /usr/include/c++/v1/ /usr/local/include/"
  endif
endfunction
command! MyCPPtags :call MyCPPtags()

set tags+=~/.vim/myTags/LLVMtags

" systemwise ctags for coding optimized for clang and modern c++11 or c++14
function! LLVMtags()
  let l:ctags_hook = '$(git rev-parse --show-toplevel)/.git/hooks/ctags'

  if exists(l:ctags_hook)
    exec '!'. l:ctags_hook
  else
      exec "!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --sort=foldcase --language-force=C++ -f ~/.vim/myTags/CPPtags /usr/include/c++/v1/ "
  endif
endfunction
command! LLVMtags :call LLVMtags()


" turn off vim-markdown folding
" let g:vim_markdown_folding_disabled=1

nnoremap <Leader>ct :call ReindexCtags()<CR>

"After whitespace, insert the current directory into a command-line path
cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"

"Swap two words
nmap <silent> gs :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

"thoughtbot vim-rspec mapping
map <Leader>rcs :call RunCurrentSpecFile()<CR>
map <Leader>rns :call RunNearestSpec()<CR>
map <Leader>rls :call RunLastSpec()<CR>
map <Leader>ras :call RunAllSpecs()<CR>

" Underline the current line with '='
" handy for reademe file
nnoremap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nnoremap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
" useful for Git merge workflow for larger file
nnoremap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

"Syntastics for ruby
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_eruby_ruby_quiet_messages =
    \ {"regex": "possibly useless use of a variable in void context"}


" filetype for ruby stuff
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby compiler ruby
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

  " Clojure
  autocmd FileType clojure map <Leader>tcl :!lein test<cr>
augroup END


command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e
command! W w
command! Wq wq

let g:rspec_command = "Dispatch bin/rspec {spec}"

set switchbuf=usetab,newtab

let g:syntastic_ruby_mri_exec='/usr/bin/ruby'

" autocomplete

set completeopt=menu,preview
au FileType
  \ if &omnifunc == "" |
  \   setlocal omnifunc=syntaxcomplete#Complete |
  \ endif


" few syntastic checker
let g:syntastic_auto_loc_list = 2
let g:syntastic_ignore_files = ['\.min\.js$', '\.min\.css$']
let g:syntastic_loc_list_height = 5
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_error_symbol = '!!'
let g:syntastic_style_warning_symbol = '!'

let g:syntastic_html_checkers = []
let g:syntastic_java_checkers = []
let g:syntastic_javascript_checkers = ['jshint', 'jscs']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_sh_checkers = ['shellcheck']

function! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
         " No location/quickfix list shown, open syntastic error location panel
         Errors
    else
        lclose
    endif
endfunction

" toggle between systastic errors
nnoremap <silent> <leader>te :<C-u>call ToggleErrors()<CR>

" writing function for saving after rubocop in vim
function! RubocopFix()
  execute ":! rubocop % -a"
  execute ":w!"
endfunction
command! RubocopFix :call RubocopFix()

" vim commentary
autocmd FileType c,cpp,cs,java      setlocal commentstring=//\ %s
autocmd FileType sql  setlocal commentstring=--\ %s

"using thoughtbot/vim-rspec and tpope/dispatch.
let g:rspec_command = "Dispatch bin/rspec {spec}"

" Merge a tab into a split in the previous window
" Merge between two tabs
function! MergeTwoTabs()
  if tabpagenr() == 1
    return
  endif
  let bufferName = bufname("%")
  if tabpagenr("$") == tabpagenr()
    close!
  else
    close!
    tabprev
  endif
  split
  execute "buffer " . bufferName
endfunction
command! MergeTwoTabs :call MergeTwoTabs()

nmap <leader>mt :call MergeTwoTabs()<CR>

" When autocompleting within an identifier, prevent duplications...
augroup Undouble_Completions
    autocmd!
    autocmd CompleteDone *  call Undouble_Completions()
augroup None

function! Undouble_Completions ()
    let col  = getpos('.')[2]
    let line = getline('.')
    call setline('.', substitute(line, '\(\k\+\)\%'.col.'c\zs\1', '', ''))
endfunction

" Magically build interim directories if necessary
" thanks to  Author: Damian Conway
function! AskQuit (msg, options, quit_option)
    if confirm(a:msg, a:options) == a:quit_option
        exit
    endif
endfunction

function! EnsureDirExists ()
    let required_dir = expand("%:h")
    if !isdirectory(required_dir)
        call AskQuit("Parent directory '" . required_dir . "' doesn't exist.",
             \       "&Create it\nor &Quit?", 2)

        try
            call mkdir( required_dir, 'p' )
        catch
            call AskQuit("Can't create '" . required_dir . "'",
            \            "&Quit\nor &Continue anyway?", 1)
        endtry
    endif
endfunction

augroup AutoMkdir
    autocmd!
    autocmd  BufNewFile  *  :call EnsureDirExists()
augroup END

" assembly language syntax highlighting
au BufRead,BufNewFile *.asm set filetype=nasm

" find recursively relative path though your project folder
" like tree Data Structure
set path=$PWD/**
set path+=$HOME/**
set path+=/usr/include/c++/v1**
" set path+=/usr/local/include

" best tab file navigation ,ft
" best split file navigation ,fs
" Sometimes ,ff

nnoremap <leader>ft :tabfind<space>
nnoremap <leader>fs :sfind<space>
nnoremap <leader>ff :find<space>

" Damian Conway's  Blink function
nnoremap <silent> n n:call HLNext(0.1)<cr>
nnoremap <silent> N N:call HLNext(0.1)<cr>

function! HLNext (blinktime)
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 2000) . 'm'
  call matchdelete(ring)
  redraw
endfunction


" vim mixed indent flag from vim airline
let g:airline#extensions#whitespace#mixed_indent_algo = 2

" Make sure you have installed clang-format in your system
" clang format integrating in Vim for Ubuntu derivtives
" OS X user must change the path
" For OS X most probable path
"/usr/local/share/clang-3.X/clang-format.py
" DOCS

augroup Clang-format
  " Clear old autocmds in group
  autocmd!
    " you have config your own style .clang-format
    autocmd FileType c,cpp nnoremap <leader>f :pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>
    autocmd FileType c,cpp vnoremap <leader>f :pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>
augroup END

"VIm autosave when loose focus
autocmd BufLeave,FocusLost * silent! wall

" better for omni complete pop up scrolling
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'J'
            return "\<C-N>"
        elseif a:action == 'K'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent>J <C-R>=OmniPopup('J')<CR>
inoremap <silent>K <C-R>=OmniPopup('K')<CR>

" vim LATEX support is added
augroup sourceLatex
  autocmd!
  autocmd FileType tex nnoremap <leader>b :! pdflatex % <CR>
  autocmd FileType tex setlocal iskeyword+=:,-
  autocmd FileType tex setlocal makeprg=pdflatex\ -file-line-error\ -interaction=nonstopmode\ %

  autocmd FileType tex inoremap <buffer> { {}<ESC>i
  autocmd FileType tex inoremap <buffer> [ []<ESC>i
augroup END

augroup sourcePyTHON
    " full Python syntax highlighting
    let python_highlight_all=1
    let g:pyflakes_use_quickfix=1
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    " this one is which you're most likely to use?
    autocmd FileType python highlight ColorColumn ctermfg=12, ctermbg=9
    autocmd FileType python call matchadd('ColorColumn', '\%80v', 100)
    " Display tabs at the beginning of a line in Python mode as bad
    au BufRead,BufNewFile *.py,*.pyw match ExtraWhitespace /^\t\+/
    " Make trailing whitespace be flagged as bad
    " au BufRead,BufNewFile *.py,*.pyw match ExtraWhitespace /\s\+$/
    au BufRead,BufNewFile *.py,*.pyw let python_space_errors = 1
    " only UNIX line endings.
    au BufNewFile *.* set fileformat=unix
    let g:syntastic_python_checkers = ['pyflakes']
    autocmd BufRead *.py setlocal smartindent cinwords=if,else,elif,for,while,try,except,finally,def,class
augroup END

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Tabularize
nmap <Leader>a= :Tabularize /=\zs<CR>
vmap <Leader>a= :Tabularize /=\zs<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" use spelling in email and git commit messages
autocmd FileType mail,gitcommit set spell
set spellsuggest=5

" make the command mode less annoying
" Emacs(readline) binding is here
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
cnoremap <c-b> <Left>
cnoremap <c-f> <Right>
cnoremap <c-d> <Del>

" " Automatic formating for language
" here for python make sure you have autopep8 installed in your system
" You can use this technique for other formatter function
" or you can write it on your own way for example see RubocopFix

" function! PyFix()
"   w!
"   set autoread
"   silent exec "! autopep8 -i -a ".expand('%')
"   redraw!
"   set noautoread
"   e!
"   w
" endf

" au Filetype python nnoremap <leader>f :silent call PyFix()
"
" C or CPP header abbreviation complete
ab #i #include
ab #d #define

" vim spell checking feature is good for editing txt file markdown or latex
if has("spell")
    set spelllang=en_us
    nnoremap <leader>s :set spell!<CR>
endif

