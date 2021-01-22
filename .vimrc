call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    "Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'honza/vim-snippets' 
    Plug 'leafoftree/vim-vue-plugin'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-peekaboo'
    Plug 'jremmen/vim-ripgrep'
    Plug 'airblade/vim-rooter'
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"   Plug 'vimwiki/vimwiki'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'vim-scripts/auto-pairs-gentle'
    Plug 'unblevable/quick-scope'       
    Plug 'dracula/vim', { 'as': 'dracula'  }
    Plug 'morhetz/gruvbox'
    "Tried for coc-conjure. But needs neovim. Maybe try later
    "Plug 'tpope/vim-dispatch'
    "Plug 'clojure-vim/vim-jack-in'
    "Plug 'Olical/conjure', {'tag': 'v4.9.0'}
    Plug 'guns/vim-sexp',    {'for': 'clojure'}
    Plug 'liquidz/vim-iced', {'for': 'clojure'}
    Plug 'liquidz/vim-iced-coc-source', {'for': 'clojure'}


call plug#end()
"colorscheme gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark    " Setting dark mode
"set background=light   " Setting light mode
let g:gruvbox_contrast_dark = "medium"

:set number
:set cursorline
:set expandtab
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set autoindent
:set smartindent
:set cindent
:set ignorecase
:set smartcase
:set path=.,/usr/include,,**
:set incsearch
:syntax on 
:set backspace=indent,eol,start
au BufRead,BufNewFile *.html.twig set filetype=html
"Uncomments this two lines, to display tabs in python files
"set list
"set listchars=tab:>-

"on go files, revert tab setting
"autocmd Filetype go setlocal noexpandtab
autocmd FileType json syntax match Comment +\/\/.\+$+

"Disable ex mode
nnoremap Q <nop>

let mapleader=","

"Move lines or blocks with Alt+j/k
"map <Esc>j <A-j>
"map <Esc>k <A-k>
"nnoremap <Esc>j :m .+1<CR>==
"nnoremap <Esc>k :m .-2<CR>==
"inoremap <Esc>j <Esc>:m .+1<CR>==gi
"inoremap <Esc>k <Esc>:m .-2<CR>==gi
"vnoremap <Esc>j :m '>+1<CR>gv=gv
"vnoremap <Esc>k :m '<-2<CR>gv=gv
"
"MAP jk in insert to <Esc>
inoremap jk <ESC>
"MAP leader v to block visual
noremap <leader>v <C-V>
if has('win32')
  " Avoid mswin.vim making Ctrl-v act as paste
    noremap <C-V> <C-V>
endif

"Remap alt for chromebook
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
      exec "imap \e".c." <A-".c.">"
        let c = nr2char(1+char2nr(c))
      endw

      set timeout ttimeoutlen=50
"Switch buffer fast:
:noremap <leader>b :Buffers<CR>

"fzf fuzzy finder options / bindings
" Insert mode completion
imap <leader><c-f> <plug>(fzf-complete-path)
imap <leader><c-l> <plug>(fzf-complete-line)
" Path completion with custom source command
inoremap <expr> <leader><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <leader><c-f> fzf#vim#complete#path('rg --files')

"autopairs gente setting
let g:AutoPairsUseInsertedCount = 1



"quickscope settings
"Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=100



"instant markdown settings
map <leader>md :InstantMarkdownPreview<CR>
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
"
"vimwiki 
"let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"let g:vimwiki_list = [{'path': '$HOME/Documents/vimwiki'
"      \,'path_html':  '$HOME/Documents/vimwiki/html',
"  \ 'syntax': 'markdown',
"  \ 'ext': '.md',
"  \ 'custom_wiki2html': '$HOME/scripts/wiki2html.sh'}]


"autocmd FileType vimwiki call SetMarkdownOptions()

"function! SetMarkdownOptions()
"  call VimwikiSet('syntax', 'markdown')
"  call VimwikiSet('custom_wiki2html', 'wiki2html.sh')
"endfunction


" emmet settings
"let g:user_emmet_mode='n'  "only enable normal mode function
let g:user_emmet_leader_key=','

" Coc Settings
nnoremap <leader>F :CocFix<CR>


" Enable vim-iced's default key mapping
" " This is recommended for newbies
let g:iced_enable_default_key_mappings = v:true


