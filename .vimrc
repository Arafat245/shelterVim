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
" Facebook ReactJS
Plugin 'mxw/vim-jsx'
" color schemes
Plugin 'altercation/vim-colors-solarized'
" for Angular JS
" Plugin 'burnettk/vim-angular'
" for coffee-script
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/ListToggle'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'docunext/closetag.vim'
Plugin 'hukl/Smyck-Color-Scheme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'neitanod/vim-clevertab'
Plugin 'Valloric/MatchTagAlways'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'regedarek/ZoomWin'
Plugin 'tpope/vim-ragtag'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0ng/vim-hybrid'
" Plugins for javascript library and modern syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-fugitive'
" make your own text-object using regular expression
" to learn about more about any plugin ...go to github.com
Plugin 'kana/vim-textobj-user'
" Plugin 'nelstrom/vim-textobj-rubyblock'
" Specific to rails
Plugin 'mhinz/vim-startify'
" Plugin 'ngmy/vim-rubocop'
" Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
" Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
" Plugin 'vim-ruby/vim-ruby'
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
" Plugin 'jplaut/vim-arduino-ino'
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
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'ctrlpvim/ctrlp.vim'

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
" set nofoldenable

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
set wildignore+=~/.vim/view/**

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
" colorscheme hybrid
colorscheme smyck

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

" ,tt browse tags using ctags
nnoremap <leader>tt :TagbarToggle<CR>

" better moving between windows
" Ctrl+{h,j,k,l}: move among windows
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
" Toggle  between most recent window
nnoremap <C-x> <C-w>x


" ,g: ctags go to definition in new tab
" ,G: ctags go to definition in new buffer
" ,,: line feed in normal
" ,q: close tab
" ,hz: my doc file
" ,z : Select foldmethod
" ,tp: toggle paste mode
" ,ts : SyntasticToggleMode

cnoremap %% <C-R>=fnameescape(expand('%:p:h')).'/'<cr>
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>et :tabe %%
" open in read only mode
nmap <leader>v  :view %%
" you can also map :new and :vnew if you like

nnoremap <silent> <leader>, o<Esc>

nnoremap <leader>nt :tabedit <c-r>=expand("%:p:h")<cr>/
nnoremap <leader>g  <C-w><C-]><C-w>T
nnoremap <leader>G  <C-]>
nnoremap <leader>ts :SyntasticToggleMode<CR>
nnoremap <leader>tp  :set invpaste<CR>
nnoremap <leader>q  :tabclose<CR>
nnoremap <Leader>hz :tabe ~/Dropbox/FUNProgramming/ehz_notebook/ehzNOTEBOOK.md<cr>

" Cool folding function you can scale this function as per your need
" Any query email mechezawad@outlook.com
function! MyFold(...)
    if exists("a:1")
        let w:counter = a:1
        try
            let &foldcolumn=w:counter
        catch
            execute "echom 'first parameter must be Integer!'"
        endtry

        if exists("a:2")
            let w:level = a:2
            " set foldnestmax
            " vim default set to 20
            try
                let &foldnestmax=w:level
            catch
                execute "echom 'second parameter must be Integer!'"
            endtry
        endif

        if exists("a:3")
            if a:3 == "all"
                let w:closeMethod = a:3
                let &foldclose=w:closeMethod
            else
                execute "echom 'third parameter will be all!'"
            endif
        else
            set foldclose=
        endif

        if exists("a:4")
            if a:4 == "all"
                let w:openMethod = a:4
                let &foldopen=w:openMethod
            else
                execute "echom 'fourth parameter will be all!'"
            endif
        else
                set foldopen=
        endif

    else
        set nofoldenable
        set foldcolumn=0
    endif
endfunction
command! -nargs=* MyFold call MyFold(<f-args>)
"
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

function! ColumnLimit(...)
    if exists("a:1")
        highlight ColorColumn ctermbg=DarkGray
        call matchadd('ColorColumn', '\%81v', 100)
    else
        set colorcolumn=
    endif
endfunction
command! -nargs=? ColumnLimit call ColumnLimit(<f-args>)

" setting personalized rulerformat
set rulerformat=%15(%c%V\ %p%%%)

" Dragging and duplicating visual-line and visual-block mode
" you can change your binding as you wish
" source : Damian conway OSCON 2013

vmap <expr> <C-h>  DVB_Drag('left')
vmap <expr> <C-l>  DVB_Drag('right')
vmap <expr> <C-j>  DVB_Drag('down')
vmap <expr> <C-k>  DVB_Drag('up')
" For Creating Duplicate
vmap <expr> <C-D>  DVB_Duplicate()

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
let g:syntastic_c_compiler = '/usr/bin/clang'
let g:syntastic_c_compiler_options = ' -std=c11 -Wall -Werror -pedantic-errors '

" Syntastic Plugin C++14 support for Clang Compiler
" Make sure clang have system path
let g:syntastic_cpp_compiler = '/usr/bin/clang++'
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
  autocmd filewritepost,Bufwritepost *.html normal gg=G
augroup END

" better for .c and .cpp build and run
augroup sourceCodeC
  autocmd!
  autocmd BufWritePost  *.c  retab! 4
  autocmd FileType c nnoremap <leader>b :! make %:r<CR>
  autocmd FileType c nnoremap <leader>mb :! clang -ggdb3 -O0 -std=c11 -Werror -Wall -pedantic-errors *.c -o %:r<CR>
  autocmd FileType c nnoremap <leader>nb :! clang -ggdb3 -O0 -std=c11 -Werror -Wall -pedantic-errors -o<space>
  " remember clang refactoring tools also supports for C11
  " you can use if you like

  autocmd FileType c nnoremap <leader>ca :!clang --analyze -std=c11 -Xanalyzer -analyzer-output=text %<CR>
  autocmd FileType c nnoremap <leader>cs :!clang -ggdb3 -O0 -std=c11 -fsanitize=address -lpthread % -o %:r<CR>
  autocmd FileType c nnoremap <leader>r :! ./
  autocmd FileType c nnoremap <leader>rr :! ./%:r<CR>
augroup END

augroup sourceCodeCPP
  autocmd!
  autocmd FileType cc,cpp nnoremap <leader>b :! make %:r<CR>
  autocmd BufWritePost  *.cc  retab! 4
  autocmd BufWritePost  *.cpp  retab! 4
  autocmd FileType cc,cpp nnoremap <leader>mb :! clang++ -ggdb3 -O0 -std=c++14 -stdlib=libc++ -lc++abi -Werror -Wself-assign -Wall -pedantic-errors -Wextra-tokens -Wambiguous-member-template -Wbind-to-temporary-copy -fdiagnostics-show-template-tree -ferror-limit=33 -ftemplate-backtrace-limit=13 -lpthread -l:libmagic.so.1 *.cpp -o %:r<CR>

  autocmd FileType cc,cpp nnoremap <leader>nb :! clang++ -ggdb3 -O0 -std=c++14 -stdlib=libc++ -lc++abi -Werror -Wself-assign -Wall -pedantic-errors -Wextra-tokens -Wambiguous-member-template -Wbind-to-temporary-copy -fdiagnostics-show-template-tree -ferror-limit=33 -ftemplate-backtrace-limit=13 -lpthread -l:libmagic.so.1 -o<space>

  autocmd FileType cc,cpp nnoremap <silent> <leader>cm :!clang-modernize -for-compilers=clang-3.6.2 -summary %<CR>
  autocmd FileType cc,cpp nnoremap <leader>ca :!clang++ --analyze -std=c++14 -stdlib=libc++ -Xanalyzer -analyzer-output=text %<CR>
  autocmd FileType cc,cpp nnoremap <leader>cs :!clang++ -ggdb3 -O0 -std=c++14 -stdlib=libc++ -lc++abi -fsanitize=address -lpthread % -o %:r<CR>

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
  autocmd FileType php nnoremap <leader>rr :! php %<CR>
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
  autocmd FileType javascript nnoremap <leader>ja :call JscsFix()<CR>:w<CR>
  " JscsFix command just before the buffer is written for *.js files"
  " autocmd BufWrite *.js JscsFix
augroup END

" augroup sourceCodeRuby
"   autocmd!
"   autocmd FileType ruby nnoremap <leader>ra :! rubocop % <CR>
"   autocmd FileType ruby nnoremap <leader>a :call RubocopFix()<CR>
"   autocmd FileType ruby nnoremap <leader>r :! ruby % <CR>
"   " Ruby autocomplete OMNICOMPLETE
"   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"   autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
"   autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"   autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"   autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" augroup END

augroup SourceEnding
    autocmd!
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

" autoread and autowrite from outside buffer
" default is off but for sanity
set autoread
set noautowrite

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
nnoremap K <Nop>

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
" nnoremap ; :

" Use the system clipboard for yank / delete / paste operations
if has('unnamedplus')
    " " System CLipboard and vim registers
   set clipboard=unnamedplus
   " set clipboard=unnamed
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

" Vim airline setting
let g:airline#extensions#tabline#enabled = 1

" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''
" Use color for Airline Whatever you like
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

" set viewoptions-=options

augroup vimrc
    autocmd BufWritePost *
    \   if expand('%') != '' && &buftype !~ 'nofile' && &buftype !~ 'readonly'
    \|      mkview
    \|  endif
    autocmd BufRead *
    \   if expand('%') != '' && &buftype !~ 'nofile' && &buftype !~ 'readonly'
    \|      silent loadview
    \|  endif
augroup END

" this will only work in Gui Vim
highlight Folded guibg=grey guifg=cyan
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
    au FileType javascript setlocal suffixesadd=.js
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
xnoremap  <Space> <PageDown>
" use controlSpace to up a page
nnoremap <NUL> <PageUp>
xnoremap <NUL> <PageUp>

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
" let g:syntastic_eruby_ruby_quiet_messages =
"     \ {"regex": "possibly useless use of a variable in void context"}


" " filetype for ruby stuff
" augroup myfiletypes
"   " Clear old autocmds in group
"   autocmd!
"   " autoindent with two spaces, always expand tabs
"   autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
"   autocmd FileType ruby,eruby,yaml setlocal path+=lib
"   autocmd FileType ruby compiler ruby
"   " Make ?s part of words
"   autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

"   " Clojure
"   autocmd FileType clojure map <Leader>tcl :!lein test<cr>
" augroup END


command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e
command! W w
command! Wq wq

let g:rspec_command = "Dispatch bin/rspec {spec}"

set switchbuf=usetab,newtab

" let g:syntastic_ruby_mri_exec='/usr/bin/ruby'

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
let g:syntastic_javascript_checkers = ['jscs', 'eslint']
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
autocmd FileType apache setlocal commentstring=#\ %s

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
    let col  = getpos('.')[3]
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
set path-=~/.vim/**
set path-=~/.vim/bundle/
set path+=/usr/include/c++/v1**
set path+=/etc/**
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
    " Clang Format also work for Objective C JAVA
    " Clang-formating the current buffer
    autocmd FileType c,cpp,cc nnoremap <leader>cf :!clang-format -i -style=WebKit %<CR>
    autocmd FileType c,cpp,cc nnoremap <leader>f :pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>
    autocmd Filetype c,cpp,cc imap <C-L> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>
    autocmd FileType c,cpp,cc vnoremap <leader>f :pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>
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
    autocmd FileType python call matchadd('ColorColumn', '\%81v', 100)
    " Display tabs at the beginning of a line in Python mode as bad
    au BufRead,BufNewFile *.py,*.pyw match ExtraWhitespace /^\t\+/
    " Make trailing whitespace be flagged as bad
    " au BufRead,BufNewFile *.py,*.pyw match ExtraWhitespace /\s\+$/
    au BufRead,BufNewFile *.py,*.pyw let python_space_errors = 1
    " only UNIX line endings.
    au BufNewFile *.* set fileformat=unix
    let g:syntastic_python_checkers = ['flake8']
    " let g:syntastic_python_checkers = ['pyflakes']
    autocmd BufRead *.py setlocal smartindent cinwords=if,else,elif,for,while,try,except,finally,def,class
augroup END

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving insert mode
autocmd CursorMovedI *  if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

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
" start of line
cnoremap <C-A>     <Home>
" back one character
cnoremap <C-B>     <Left>
" delete character under cursor
cnoremap <C-D>     <Del>
" end of line
cnoremap <C-E>     <End>
" forward one character
cnoremap <C-F>     <Right>
" recall newer command-line
cnoremap <C-N>     <Down>
" recall previous (older) command-line
cnoremap <C-P>     <Up>
" back one word
cnoremap <Esc><C-B>    <S-Left>
" forward one word
cnoremap <Esc><C-F>    <S-Right>


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

" Helpful for printing as a series
" Inspired from vim official documentation
function! Counter(...)
    if exists("a:1")
        let w:counter = a:1
    else
        let w:counter = 0
    end

    if exists("a:2")
        let w:incre = a:2
    else
        let w:incre = 1
    end

    " a:0 represent number of commandline agrv like C Language (argc)
    " a:1 represent argument vector like C Language (argv)
    if exists("a:3")
        let w:delim = a:3
    else
        let w:delim = ","
    end

    func! ListItem()
      let w:counter += w:incre
      return w:counter - w:incre . w:delim ." "
    endfunc

    func! ListReset()
      let w:counter = 0
      return ''
    endfunc

    inoremap <expr> <C-L> ListItem()
    inoremap <expr> <C-R> ListReset()
endfunction
command! -nargs=* MySeries call Counter(<f-args>)

" Better backword deletion in insert mode
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

" Better focus to line number
autocmd InsertLeave * set cursorline
autocmd InsertEnter * set nocursorline

" YCM configuration
" let g:ycm_confirm_extra_conf    = 0
" Sometimes useful
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_always_populate_location_list = 1

" YouCompleteMe will populate vims location list with new diagnostic data.
" You can jump through the entries in that list with :lnext and :lprevious.
"
" emacs (readline style)
" That don't Wait for long command
" thanks to @tpope
set ttimeout
if &ttimeoutlen == -1
  set ttimeoutlen=50
endif

" Oh Wait I have remaped to
" Last inserted text in vim<C-A> REMAPPED
" IN insert mode <C-x> insert you in sub command mode
inoremap   <C-X><C-A> <C-A>

" emacs binding WORKS like charm in insert mode
" INspired from EMACS
" start of line
inoremap        <C-A> <C-O>^
" back one word
inoremap <expr> <C-B> getline('.')=~'^\s*$'&&col('.')>strlen(getline('.'))?"0\<Lt>C-D>\<Lt>Esc>kJs":"\<Lt>Left>"
" delete character under cursor
inoremap <expr> <C-D> col('.')>strlen(getline('.'))?"\<Lt>C-D>":"\<Lt>Del>"
" end of line
inoremap <expr> <C-E> col('.')>strlen(getline('.'))<bar><bar>pumvisible()?"\<Lt>C-E>":"\<Lt>End>"
" forward one character
inoremap <expr> <C-F> col('.')>strlen(getline('.'))?"\<Lt>C-F>":"\<Lt>Right>"

" JUMP BACK FROM COMMAD MODE IN VIM
" ALternative to ESC in command line mode
if empty(mapcheck('<C-G>', 'c'))
  cmap <script> <C-G> <C-C>
endif

" common type-mistakes
ab teh the

" Highlight Matched Parenthesis
hi MatchParen ctermbg=blue guibg=lightblue

" Better JUMP upwards and downwards
inoremap <C-k> <C-g>k
" remember, I have remapped <C-j> VIM's default Behavior
" NO No ..There is a default alternative of <C-j> is <C-m>
inoremap <C-j> <C-g>j

" " disable individual keys by mapping them to the special <Nop>
" " only in INSERT mode
" " for purity BUT I AM not used to
" inoremap <BS> <Nop>
" inoremap <Del> <Nop>

nnoremap  Y "+Y
nnoremap  y "+yy
nnoremap  yy "+yy
xnoremap  Y "+Y
xnoremap  y "+y

" you will forget some mapping so read key map directly from plgin folder or
" :h

"
" CtrlP is not intended for hidden file ...You find rather
" CtrlP.vim config
let g:ctrlp_match_window = 'bottom,order:btt'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_lazy_update = 350 " Set delay to prevent extra search
" let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_switch_buffer = 'Et' " Jump to tab AND buffer if already open
" CtrlP -> directories to ignore when fuzzy finding
" CtrlP -> directories to ignore when fu

" split WINDOW not always in EQUAL SIZE
set noequalalways
" Autocomplete with dictionary words when spell check is on
set dictionary+=/usr/share/dict/words
au FileType * execute 'setlocal dict+=~/.vim/spell/'.&filetype.'.txt'
" set dictionary+=~/.vim/spell

" NOTE for PLUGIN usage
" see official documentation page for better use
" use * for search word under cursor
" use g* for search word under cursor
" use gv      - reselect block
" Rainbow parenthesis settings
" Use <C-R> for using register in Command mode or Insert mode

augroup ParenthesisColored
    autocmd!
    autocmd bufwritepost  * RainbowParentheses<CR>
    nnoremap <leader>tr :RainbowParentheses!!<CR>
augroup END

" fugitive Quickfix WINDOW
autocmd QuickFixCmdPost *grep* cwindow

" simplify resizing splits in vim Window
" Activate Meta in hacky way
" You can Deactive your ALT key mapping in Terminal or iTerm
" for some case...But Still ..It will work
" reference http://vi.stackexchange.com/questions/2350/how-to-map-alt-key
execute "set <M-j>=\ej"
nnoremap <M-j> <C-w>-
execute "set <M-k>=\ek"
nnoremap <M-k> <C-w>+
execute "set <M-h>=\eh"
nnoremap <M-h> <C-w><
execute "set <M-l>=\el"
nnoremap <M-l> <C-w>>

" abbreviation in Commad-line mode
cabb tabc tabclose

" Valloric/ListToggle
let g:lt_location_list_toggle_map = '<leader>tl'
" THis is only work on gvim or macvim
let g:lt_quickfix_list_toggle_map = '<leader>tq'

" @tpope vineger alternative
" NETRW built in Project drawer
" Quickly explore directory with Netrw, positioning cursor to the last file
" www.vimcast.org Thanks to drew nil @thoughtbot
" http://youtu.be/MGmIJyTf8pg for source of inspiration (tpope)
" press - to go into Project drawer and <CR> to enter
if !exists("g:loaded_vinegar") && empty(filter(split(&rtp, ','), "v:val =~ 'vinegar'"))
  nnoremap <silent> -  :let g:netrw_last_file = expand('%:t')<CR>
                      \:Explore<CR>
                      \:exec ':'.search('\V'.escape(g:netrw_last_file, '\'))<CR>
  let g:netrw_banner = 0
  let g:netrw_sort_sequence = '*,\%(' . join(map(split(&suffixes, ','), 'escape(v:val, ".*$~")'), '\|') . '\)[*@]\=$'
  " mix dotfiles with regular ones when sorting
  au FileType netrw  let g:netrw_sort_options = 'i/['.g:netrw_sepchr.'._]\+/'
                  \| let g:netrw_list_hide = '^\.\.\=/\=$,^\.'
  let g:netrw_hide = 0
endif


" helper function to cycle through options
" reference: http://cs.stanford.edu/~netj/
fun! s:cycle(opt, values)
  exec "let oldValue = &". a:opt
  let idx = (index(a:values, oldValue) + 1) % len(a:values)
  let newValue = a:values[idx]
  exec "setlocal ". a:opt ."=". newValue
  exec "setlocal ". a:opt ."?"
endfun

" Fold method
nnoremap <leader>z    :call <SID>cycle("foldmethod", split("manual indent syntax"))<CR>
" Virtualedit
nnoremap <leader>ve   :call <SID>cycle("virtualedit", insert(split("all block insert onemore"), ""))<CR>

" If you want to exclude * register
" set clipboard=exclude:.*

" some by-product files
set suffixes-=.h
set suffixes+=.o,.a     " object and archive files
set suffixes+=.class    " Java classes
set suffixes+=#         " Emacs auto backups


func! LessInitFunc()
  set nocursorcolumn nocursorline nonumber
endfunc
command! LessInitFunc :call LessInitFunc()

" " To bypass Syntastic
" let g:syntastic_mode_map = {
"        \ "mode": "active",
"        \ "active_filetypes": [],
"        \ "passive_filetypes": ["dart", "html"] }

"
" for mapping control key
" " Sometimes Helps with autoread
" you can omit silent IF you like
" fucking Shit
" stty -ixon
" add above line in .bash_profile or .bashrc or .zshrc or .zprofile


" HTML5 othree
" Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0
" Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0
" Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0
" Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0


" ACTIVATING META FOR vim-yankstack
" for MAC
" just use :set macmeta
" It is cool Serially Maintain register 1, 2, 3, 4
" And the register with cycle like YANK ring which is cool EMACS feature
" see :reg for track
execute "set <M-p>=\ep"
execute "set <M-P>=\eP"

" MatchTagALways
let g:mta_use_matchparen_group = 0

" tHIS FUNction
" all credits to https://github.com/dhruvasagar
function! NeatFoldText()
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()

" case sensetative with ignore case on
" ref:  http://vi.stackexchange.com/questions/4054/case-sensitive-with-ignorecase-on
function! SearchCaseInsensetiveWithIgnore()
    nnoremap <silent>  * :let @/='\C\<' . expand('<cword>') . '\>'<CR>:let v:searchforward=1<CR>n
    nnoremap <silent>  # :let @/='\C\<' . expand('<cword>') . '\>'<CR>:let v:searchforward=0<CR>n
    nnoremap <silent> g* :let @/='\C'   . expand('<cword>')       <CR>:let v:searchforward=1<CR>n
    nnoremap <silent> g# :let @/='\C'   . expand('<cword>')       <CR>:let v:searchforward=0<CR>n
endfunction
command! SearchCaseInsensetiveWithIgnore call SearchCaseInsensetiveWithIgnore()


" From source
" Vim default visual search is not handy
" www.vimcast.org
" makes * and # work on visual mode too.
function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>

" productibility
" word, column, byte and etc.. count is easy
" vim has default wordcount() function which return in status line
" g<C-g>

nnoremap <leader>* :%s/\<<C-r><C-w>\>//gn<CR>
vnoremap <leader>* "hy:%s/\V<C-r>h//gn<CR>

" tern-project for JS
let g:tern_show_argument_hints='on_hold'
" and
let g:tern_map_keys=1

" better CTRLP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" forget Undo History for the current file

fun! <SID>ForgetUndo()
    let old_ul = &undolevels
    set undolevels=-1
   exe "sil! normal a \<BS>\<Esc>"
    w
    let &undolevels = old_ul
    unlet old_ul
endfun
com! -nargs=0 ForgetUndo call <SID>ForgetUndo()

" show full definition from tag file
set showfulltag

" Insert current date and time quickly
" 06 March 2016, 20:30:43

iab NOWW <C-R>=strftime("%d %B %Y, %X")<CR>

" Save session and Load session
" source github
set ssop=buffers,sesdir,tabpages,winpos,winsize

com! -nargs=? SaveSession call s:SaveSession(<f-args>)
com! -nargs=? LoadSession call s:LoadSession(<f-args>)

fun! s:LoadSession(...)
    let fname = '.session.vim'
    if a:0 > 0
        let fname = a:1
    endif
    let sfile = expand('%:p:h') . '/' . fname
    if !filereadable(sfile)
        let sfile = getcwd() . '/' . fname
    endif
    if filereadable(sfile)
        exec 'sil! so ' . sfile
    else
        echo 'session file (' . sfile . ') not exists'
    endif
endfun

fun! s:SaveSession(...)
    let fname = '.session.vim'
    if a:0 > 0
        let fname = a:1
    endif
    let sfile = getcwd() . '/' . fname
    exec 'sil! mks! ' . sfile
    echo 'session saved: ' . sfile
endfun

" and Tips
" Don't map any <C-s> in Vim
" Because It is Tmux prefix or whatever
" check your mapping :map <C-s>
"
" Specific to angularJS
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"

" REACTJS
"
" JSX (React) config
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" via https://gist.github.com/cszentkiralyi/dc61ee28ab81d23a67aa
function! Quick_scope_selective(movement)
    let needs_disabling = 0
    if !g:qs_enable
        QuickScopeToggle
        redraw
        let needs_disabling = 1
    endif

    let letter = nr2char(getchar())

    if needs_disabling
        QuickScopeToggle
    endif

    return a:movement . letter
endfunction

let g:qs_enable = 0

" More to come
