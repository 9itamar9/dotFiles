source $VIMRUNTIME/vimrc_example.vim
behave xterm
"set diffexpr=MyDiff()
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg1 = substitute(arg1, '!', '\!', 'g')
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg2 = substitute(arg2, '!', '\!', 'g')
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let arg3 = substitute(arg3, '!', '\!', 'g')
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "if empty(&shellxquote)
        "let l:shxq_sav = ''
        "set shellxquote&
      "endif
      "let cmd = '"' . $VIMRUNTIME . '\diff"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "let cmd = substitute(cmd, '!', '\!', 'g')
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  "if exists('l:shxq_sav')
    "let &shellxquote=l:shxq_sav
  "endif
"endfunction

source D:\\Documents\\DotFiles\\vimrc_without-plugins
set guifont=Courier_New:h14

call plug#begin('D:/Program Files (x86)/Vim/vimfiles/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

let g:airline#extensions#tabline#enabled = 1

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
" Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons' " Doesn't work with the font

Plug 'machakann/vim-highlightedyank'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-commentary' " gcc to comment a line
Plug 'Valloric/YouCompleteMe'
Plug 'wincent/Command-T'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround' " ys(motion)[ to add [, cs[{ to replace to { and ds{ to delete
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/ReplaceWithRegister' " gr(motion) is to replace
Plug 'easymotion/vim-easymotion' " <Leader><Leader>f/k/j to easymotion

" Custom textobj
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'thinca/vim-textobj-comment'

call plug#end()

colorscheme gruvbox

"======== Some lettings ========
let g:mapleader = "\<Space>"
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:NERDTreeIgnoremap = ['\.swp$', '^\.DS_Store$']
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeShowLineNumbers = 1
" let  g:NERDTreeDirArrowExpandable = '>'
" let  g:NERDTreeDirArrowCollapsible = '<'

" Remove C-H deleting stuff (Auto Pairs plugin)
let g:AutoPairsMapCh = 0

"======== Keys Remmaping ========

" Makes the easymotion compatible with hjkl
map \l <Plug>(easymotion-lineforward)
map \j <Plug>(easymotion-j)
map \k <Plug>(easymotion-k)
map \h <Plug>(easymotion-linebackward)

map <silent><C-b> :NERDTreeToggle<CR>
" map <leader><Tab> <C-p><C-f>
map <leader>r gr
map \ <Plug>(easymotion-prefix)

" Use <leader>g... to git commands
nmap <leader>gc :Gcommit<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gd :Gvdiff<CR>

"======== Some Commands ========
