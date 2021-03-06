" pathogen to use plugins 
  execute pathogen#infect('plugins/{}')

"""""""""""""""""""""
" THEME
""""""""""""""""""""
syntax on 
set nu
set background=dark
let g:dracula_italic = 0
let g:dracula_colorterm = 0

colorscheme dracula

"""""""""""""""
" QOL 
"""""""""""""""
filetype plugin indent on
set noswapfile

" more natural split opening
  set splitbelow
  set splitright

" Use ctrl-[hjkl] to select the active split!
  nmap <silent> <c-k> :wincmd k<CR>
  nmap <silent> <c-j> :wincmd j<CR>
  nmap <silent> <c-h> :wincmd h<CR>
  nmap <silent> <c-l> :wincmd l<CR>

" set leader to comma
  let mapleader = ","

" Persist undo even when closed
  try 
    set undodir=~/.vim/temp_dirs/undodir 
    set undofile 
    catch 
  endtry

" Configure backspace so it acts as it should act
  set backspace=eol,start,indent
  set whichwrap+=<,>,h,l

" Ignore case when searching
  set ignorecase

" When searching try to be smart about cases 
  set smartcase

" Highlight search results
  set hlsearch

" Makes search act like search in modern browsers
  set incsearch 

" No annoying sound on errors
  set noerrorbells
  set novisualbell
  set t_vb=
  set tm=500

" Add a bit extra margin to the left
  set foldcolumn=1

" Show matching brackets when text indicator is over them
  set showmatch 

" How many tenths of a second to blink when matching brackets
  set mat=2

" Use spaces instead of tabs
  set expandtab

" Be smart when using tabs ;)
  set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 200 characters
set lbr
set tw=200

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Disable highlight
map <silent> <leader><cr> :noh<cr>

" Autocomplete setup 
" autocmd FileType ruby set omnifunc=rubycomplete#Complete
" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1
" set completeopt=menuone,longest
" :imap <Tab> <Enter>
" set shortmess+=c
set rtp+=~/tabnine-vim

" Copy paste
 map <leader>pp :setlocal paste!<cr>

 noremap <Leader>y "*y
 noremap <Leader>p "*p
 noremap <Leader>Y "+y
 noremap <Leader>P "+p


"""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""
" nerdtree for file tree stuff
  map <leader>nn :NERDTreeToggle<CR>
  map <leader>nf :NERDTreeFind<CR>
  let g:NERDTreeWinPos = "right"

" fugitive for git funsies
nmap <leader>gr :diffget //3<CR>
nmap <leader>gl :diffget //2<CR>
nmap <leader>gs :G <CR>
nmap <leader>gco :Gcommit <CR>
nmap <leader>gp :Gpush <CR>

" FZF for fuzzy searching files
 map <space> :GFiles <CR>
 map <leader>j :Rg <CR>
 map <leader>f :History <CR>
 map <leader>b :Buffers <CR>

" Lightline for status line
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
set laststatus=2

" Tmux testing
  let g:turbux_command_prefix = 'bundle exec'
  let g:no_turbux_mappings = 1
  map <leader>t <Plug>SendTestToTmux
  map <leader>s <Plug>SendFocusedTestToTmux

