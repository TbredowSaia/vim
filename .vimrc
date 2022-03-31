set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Vundle Plugins"
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required
autocmd BufNewFile,BufRead *.py,*.yml,*.yaml vnoremap <special> <F5> :s/^/#<CR> 
autocmd BufNewFile,BufRead *.py,*.yml,*.yaml vnoremap <special> <F6> :s/^#/<CR> 

autocmd BufNewFile,BufRead *.html set tabstop=4 softtabstop=4 shiftwidth=4  expandtab autoindent fileformat=unix
autocmd BufNewFile,BufRead *.html vnoremap <special> <F5> :s/^\(.*\)$/<!-- \1 --><CR>
autocmd BufNewFile,BufRead *.html vnoremap <special> <F6> :s/^<!-- \(.*\) -->$/\1<CR>

autocmd BufNewFile,BufRead *.yml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
autocmd BufNewFile,BufRead *.yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix

source ~/.vim/python.vim
let g:python_highlight_all=1
set number
syntax on
set cursorline
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:gruvbox_bold=1
let g:gruvbox_termcolors=256
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
