"###############################################################################
"# Plugins
"###############################################################################
call plug#begin('~/.local/share/nvim/plugged')

" Git wrapper
Plug 'tpope/vim-fugitive'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Atom Style colors
Plug 'https://github.com/joshdick/onedark.vim'

" Unmanaged plugin (manually installed and updated) - This should be pointing to ~/.config/.prototype-plugins
Plug '~/my-prototype-plugin'

" provides keyword completion system
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" For func argument completion - flow
Plug 'wokalski/autocomplete-flow'

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" React Snippets - might be better to create my own?
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }

" Linting
Plug 'w0rp/ale'

" status/tabline for vim
Plug 'vim-airline/vim-airline'

" Relative numbers are used in a buffer that has focus, and is in normal mode
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Tern is a stand-alone code-analysis engine for JavaScript - Works with tand-alone code-analysis engine for JavaScript deoplete
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" better terminal buffer experience 
Plug 'mklabs/split-term.vim'

" adds filetype glyphs (icons) to other plugins 
Plug 'ryanoasis/vim-devicons'

" Projectionist provides granular project configuration using 'projections' 
Plug 'tpope/vim-projectionist'

" Tools to make Vim superb for developing with Node.js - gf help :)
Plug 'moll/vim-node'

" https://github.com/tpope/vim-rails 
Plug 'tpope/vim-rails'

" Syntax file for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Prettier for vim
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

" JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation
Plug 'pangloss/vim-javascript'

" Syntax highlighting and indenting for JSX§
Plug 'mxw/vim-jsx'

" Initialize plugin system
call plug#end()

"###############################################################################
"# deoplete settings
"###############################################################################

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"###############################################################################
"# ale settings
"###############################################################################

" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" Enable completion where available.
let g:ale_completion_enabled = 1

" change frequent error checking
let g:ale_lint_on_text_changed = 'normal'

"###############################################################################
"# airline settings
"###############################################################################

" Airline + Ale.
let g:airline#extensions#ale#enabled = 1

let g:airline_theme='onedark'

let g:airline#extensions#tabline#enabled = 1

" Tabline will show straight lines not arrows
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Use vim-devicons for icons
let g:airline_powerline_fonts = 1

" Show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

"###############################################################################
"# javascript-libraries-syntax settings
"###############################################################################

let g:used_javascript_libs = 'underscore,react,jasmine,chai,angularjs,jquery'

"###############################################################################
"# Vim-Devicons settings
"###############################################################################

set encoding=utf8

set guifont=<FONT_NAME>:h<FONT_SIZE>
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

"###############################################################################
"# General settings
"###############################################################################

" This line enables the true color support.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set showcmd               " Show (partial) command in status line.
set showmatch             " Show matching brackets.
set showmode              " Show current mode.
set ruler                 " Show the line and column numbers of the cursor.
set number relativenumber " Show the line numbers on the left side.
"set relativenumber        " Shoe the line numbers so that they are relative to the cursor
set formatoptions+=o      " Continue comment marker in new lines.
set textwidth=0           " Hard-wrap long lines as you type them.
set expandtab             " Insert spaces when TAB is pressed.
set tabstop=2             " Render TABs using this many spaces.
set shiftwidth=2          " Indentation amount for < and > commands.

set noerrorbells          " No beeps.
set modeline              " Enable modeline.
set linespace=0           " Set line-spacing to minimum.
set nojoinspaces          " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow            " Horizontal split below current.
set splitright            " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3         " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5     " Show next 5 columns while side-scrolling.
endif
set nostartofline         " Do not jump to first character with page commands.

set clipboard=unnamed     " Use system clipboard

set mouse=a               " Aloow the use of mouse

"###############################################################################
"# Theme
"###############################################################################

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" load syntax theme
colorscheme onedark

" activate syntax highlighting
syntax on

"###############################################################################
"# Deoplete & TernJS
"###############################################################################

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]
"###############################################################################
"# File-type specific
"###############################################################################

" add spell checking and automatic wrapping at the recommended 72 columns to you commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

"###############################################################################
"# key mappings
"###############################################################################

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Move to the next buffer
nmap <leader><Right> :bnext<CR>

" Move to the previous buffer
nmap <leader><Left> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

