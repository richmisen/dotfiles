set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My bundles
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'koron/nyancat-vim'
Plugin 'skwp/greplace.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-rake'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-jdaddy'
Plugin 'pangloss/vim-javascript'
Plugin 'christoomey/vim-rfactory'
Plugin 'bling/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jgdavey/tslime.vim'
Plugin 'kopischke/vim-fetch'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'mxw/vim-jsx'
" ES2015 code snippets (Optional)
Plugin 'epilande/vim-es2015-snippets'

" React code snippets
Plugin 'epilande/vim-react-snippets'

" Ultisnips
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" nelstrom's plugin depends on kana's
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Colors
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'sickill/vim-monokai'
" Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
filetype plugin indent on    " required

" ========================================================================
" Ruby stuff
" ========================================================================
syntax on                 " Enable syntax highlighting

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,js,html setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml,html setlocal path+=lib
  " autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
  " Highlight trailing whitespace
  autocmd FileType ruby match Error /\s\+$/
  " Clojure
  autocmd FileType clojure setlocal colorcolumn=80
  autocmd FileType clojure map <Leader>t :!lein test<cr>
augroup END

" Enable built-in matchit plugin
runtime macros/matchit.vim
" ================
let mapleader = ","
map <Leader>co ggVG"*y
map <Leader>w :w<cr>
map <Leader>m :Emodel
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
map <Leader>bb :!bundle install<cr>
map <Leader>cn :e ~/Dropbox/notes/coding-notes.txt<cr>
map <Leader>cr :e ~/Dropbox/notes/ruby_notes.rb<cr>
map <Leader>cj :e ~/Dropbox/notes/js_notes.js<cr>
map <Leader>cs :e ~/Dropbox/notes/shell_notes.js<cr>
map <Leader>d obinding.pry<esc>:w<cr>
map <Leader>D Obinding.pry<esc>:w<cr>
map <Leader>x :g/binding.pry/d<esc>:w<cr>

" RSpec.vim mappings
map <Leader>t :w<cr>:call RunCurrentSpecFile()<CR>
map <Leader>r :w<cr>:call RunNearestSpec()<CR>
map <Leader>l :w<cr>:call RunLastSpec()<CR>
map <Leader>a :w<cr>:call RunAllSpecs()<CR>
let g:rspec_command = 'call Send_to_Tmux("bin/rspec {spec}\n")'
let g:rspec_runner = "os_x_iterm2"

" Bad colon key
map <Leader><Leader> :

" JSX
let g:jsx_ext_required = 0 
let g:syntastic_javascript_checkers = ['eslint']

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:CommandTMaxHeight=10

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set number
set wrap                        " wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" let monokaicolorspace=256
colorscheme solarized
" set cursorline cursorcolumn
" Use Silver Searcher instead of grep
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" SnpiUtil Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" set grepprg=ag
" let g:grep_cmd_opts = '--line-numbers --noheading'

set shiftround
set clipboard=unnamed
set laststatus=2
set autowrite
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.erb setlocal spell
autocmd FileType gitcommit setlocal spell
hi SpellBad cterm=underline ctermfg=red
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_ruby_checkers = ['rubocop']

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
