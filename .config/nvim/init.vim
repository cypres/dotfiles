" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'iCyMind/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'hashivim/vim-terraform'

Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'


" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

let g:LanguageClient_autoStart = 1

" Launch gopls when Go files are in use
let g:LanguageClient_serverCommands = {
  \ 'typescript': ['javascript-typescript-stdio'],
  \ 'yaml': ['yaml-language-server', '--stdio'],
  \ 'dockerfile': ['docker-langserver', '--stdio'],
  \ 'go': ['gopls'],
  \ 'python': ['pyls'],
  \ 'cpp': ['/usr/local/Cellar/llvm/8.0.0/bin/clangd'],
  \ 'tf': ['terraform-lsp'],
  \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" Run gofmt and goimports on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

let g:python3_host_prog="/usr/bin/python3"

" Temporary Files {{{
    " Store temporarily files globally instead of in working directory
    set backupdir=~/.config/nvim/backup
    if !isdirectory(expand(&backupdir))
      call mkdir(expand(&backupdir), "p")
    endif
    set directory=~/.vim/tmp/swap
    if !isdirectory(expand(&directory))
      call mkdir(expand(&directory), "p")
    endif
    if has('persistent_undo')
      set undodir=~/.config/nvim/undodir
      if !isdirectory(expand(&undodir))
        call mkdir(expand(&undodir), "p")
      endif
    endif
" }}}
"
set undofile                    " Persist undo tree across launches
set undolevels=1000             " Maximum number of changes that can be undone
set undoreload=10000            " Maximum number lines to save for undo on a buffer reload

" everything needs to be unicode. EVERYTHING
set encoding=utf-8

" always join with just one space, even between sentences
set nojoinspaces

" don't move the cursor to the start of the line when changing buffers
set nostartofline

" Yeah, we like
syntax enable

" No folding
set nofoldenable

" lines, cols in status line
set ruler

" current mode in status line
set showmode

" set linenumber
set nu

" I want my splits done on the proper side
set splitbelow
set splitright

"no bells whatsoever
set vb t_vb=

set tabstop=2      " Set tabstop to tell vim how many columns a tab counts for
set shiftwidth=2   " set to the same as tabstop (see #4 in :help tabstop)
set softtabstop=2  " if it looks like a tab, we can delete it like a tab
set expandtab      " no tabs! spaces only..
set shiftround     " < and > will hit indentation levels instead of always -4/+4
set autoindent     " new line has indentation equal to previous line
set smartindent    " braces affect autoindentation
set copyindent     " copy indent from the previous line

let mapleader = ","

" EasyMotion setup
let g:EasyMotion_leader_key = '<Leader>'
hi link EasyMotionTarget Identifier
hi link EasyMotionTarget2First Identifier
hi link EasyMotionTarget2Second Identifier

" Colors
set termguicolors
set background=dark
"set background=light
colorscheme NeoSolarized

let g:gitgutter_override_sign_column_highlight = 0

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

map <C-n> :NERDTreeToggle<CR>
