filetype plugin on

let g:mapleader = ","           "set leader key to comma

set number                      "line numbers
set hlsearch                    "highlight searching result
set ignorecase                  "ignore Case sensitive when searching
set showmatch                   "highlight matched bracket ()

"================================= Optional setting =================================
set relativenumber              "show relative number from current line
                                "Highly recommended
set history=1000                "store :cmd history
set title                       "change the terminal title
set cursorline                  "highlight cursor line
set mouse=h                     "Enable mouse in help mode
                                "'a' to all mode, n, v, i, c to Normal, Visual, Insert, Command mode
set wrap
let g:onedark_terminal_italics = 1

syntax sync minlines=200        "For speed up vim
set clipboard=unnamed           "yank, paste to system clipboard

"================================= Turn of swap =====================================
set noswapfile
set nobackup
set nowb

"================================= Indentation ======================================
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"================================= Tap & Space ======================================
nmap <leader>l <Esc>:set list!<CR>
highlight SpecialKey cterm=None ctermfg=grey
map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>
set listchars=tab:>·
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
set fillchars+=vert:\│          "Make vertical split separator full line
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set title
set wrap
set linebreak
set showmatch                            
set mouse=r
set laststatus=2
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'       
let g:coc_snippet_next = '<tab>'
let g:rehash256 = 1

set background=dark

"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"/usr/share/nvim/runtime/colors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" ================================ Persistent Undo ===================================
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" ================================ Auto command ===================================

autocmd InsertEnter * :set nocul                  "Remove cursorline highlight
autocmd InsertLeave * :set cul                    "Add cursorline highlight in normal mode
autocmd FileType html setlocal sw=2 ts=2 "Set indentation to 4 for html, css, scss, js
autocmd FileType css setlocal sw=2 ts=2
autocmd FileType scss setlocal sw=2 ts=2
autocmd FileType js setlocal sw=2 ts=2
autocmd FileType py setlocal sw=4 ts=4
"----------------------------------------------------------------------------------
"-- plugins
"----------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim'
Plug 'nvie/vim-flake8'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"
"" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
 
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
 
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }
" Plug 'Valloric/YouCompleteMe'
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*'  }
"
"" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
 
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'bling/vim-airline' 
Plug 'airblade/vim-gitgutter' "추가,삭제,변경내역
Plug 'tpope/vim-fugitive' "깃 연동
 
Plug 'scrooloose/syntastic' "문법 체크
Plug 'Lokaltog/vim-easymotion' "커서이동
 
Plug 'scrooloose/nerdcommenter' "주석
Plug 'edkolev/promptline.vim' "쉘프롬프트
 
Plug 'vim-scripts/vcscommand.vim' "소스 버전 컨트롤
"먼지
Plug 'majutsushi/tagbar'
 
Plug 'xuhdev/SingleCompile'
 
Plug 'terryma/vim-multiple-cursors'
"위까지 모름
Plug 'jiangmiao/auto-pairs' "짝맞추기
Plug 'vim-scripts/taglist.vim'
 
Plug 'Yggdroot/indentLine' "들여쓰기 세로줄 라인
Plug 'mhinz/vim-signify' "버전 관리 파일 상태표시
 
Plug 'pangloss/vim-simplefold' "코드접기
Plug 'peterrincker/vim-argumentative' "함수 인자 위치변경
 
Plug 'tommcdo/vim-lion' "라인정렬
Plug 'dyng/ctrlsf.vim' "여러 파일 동시에 수정

Plug 'dart-lang/dart-vim-plugin'
 
Plug 'schickling/vim-bufonly' "현재 버퍼뺴고 모든 버퍼 삭제
Plug 'sjl/gundo.vim' "수정 되돌리기 트리
 
Plug 'andrewradev/sideways.vim' "단어 좌우 이동 ,로 분리된거
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'iamcco/markdown-preview.nvim'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

"================================= Plugins setting ==================================
nmap <F3> :NERDTreeToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
 
"change parameter position
nnoremap <c-a> :SidewaysLeft<cr>
nnoremap <c-s> :SidewaysRight<cr>
 
nmap<F10> :SingleCompileRun<cr> "F10누르면 컴파일후 실행, 누르기전에 저장해야함
nmap<F9> :SingleCompile<cr>  "F9누르면 컴파일 
 
let g:Tlist_Use_Right_Window = 1
nnoremap <silent> <F4> :TlistToggle<Cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"coc nvim
let g:python3_host_prog = '/Users/ulfrid/miniconda3/bin/python'
let g:coc_global_extensions = ['coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-emmet', 'coc-pyright', 'coc-phpls', 'coc-angular', 'coc-git']
let g:coc_global_extensions += ['https://github.com/andys8/vscode-jest-snippets']

" Indent guide plugin setting (https://github.com/nathanaelkane/vim-indent-guides)
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" vim-airline
""""""""""""""""""""""""""""""""""
let g:airline_theme = 'tender'
function! AccentDemo()
  let keys = ['U','L','F','R','I','D']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('U', 'red')
  call airline#parts#define_accent('L', 'purple')
  call airline#parts#define_accent('F', 'blue')
  call airline#parts#define_accent('R', 'blue')
  call airline#parts#define_accent('I', 'blue')
  call airline#parts#define_accent('D', 'green')
  let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>>>'
let g:airline#extensions#default#layout = [
\ [ 'a', 'b'],
\ [ 'c']
\ ]

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender

" ================================ Ctags settings ===================================
set tags=./tags,tags                "find tags in current dir
nnoremap <C-[> <Esc>:po<CR> 

""""""""""""""""""""""""""""""""""
"Easy Align
""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)        
